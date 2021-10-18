//
//  RTManager.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/23.
//

#import "RTManager.h"
#import <objc/runtime.h>
#import "RTManagerForward.h"

@implementation RTManager

+(instancetype)shared {
    static RTManager *manager = nil;
    static dispatch_once_t once;
    
    dispatch_once(&once, ^{
        manager = [[RTManager alloc] init];
    });
    return manager;
}

void classResolveMethod(id obj, SEL _cmd) {
    NSLog(@"classResolveMethod - %@ - %@", obj, NSStringFromSelector(_cmd));//新的classResolveMethod函数
}

+(void)classCustomResolveMethod {
    NSLog(@"%s", __func__);
}

+ (BOOL)resolveClassMethod:(SEL)sel{
    if (sel == @selector(classResolve)) {//如果是执行test函数，就动态解析，指定新的IMP
        class_addMethod(object_getClass(self), sel, (IMP)classResolveMethod, "v16@");
        return YES;
    } else if (sel == @selector(classCustomResolve)) {
        Method method = class_getClassMethod([self class], @selector(classCustomResolveMethod));
        class_addMethod(object_getClass(self), sel, method_getImplementation(method), method_getTypeEncoding(method));
        return YES;
    }
    return [super resolveClassMethod:sel];
}

void instanceResolveMethod(id obj, SEL _cmd) {
    NSLog(@"instanceResolve - %@ - %@", obj, NSStringFromSelector(_cmd));//新的instanceResolveMethod函数
}

+(void)instanceCustomResolveMethod {
    NSLog(@"%s", __func__);
}

+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    if (sel == @selector(instanceResolve)) {
        // 第一个参数是object_getClass(self)
        class_addMethod(self, sel, (IMP)instanceResolveMethod, "v16@");
        return YES;
    } else if (sel == @selector(instanceCustomResolve)) {
        Method method = class_getClassMethod(self, @selector(instanceCustomResolveMethod));
        class_addMethod(self, sel, method_getImplementation(method), method_getTypeEncoding(method));
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}

+ (id)forwardingTargetForSelector:(SEL)aSelector {
    if (aSelector == @selector(classForward)) {
        return [RTManagerForward class];
    }
    return [super forwardingTargetForSelector:aSelector];
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    if (aSelector == @selector(instanceForward)) {
        return [[RTManagerForward alloc] init];
    }
    return [super forwardingTargetForSelector:aSelector];
}


- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
    if (aSelector == @selector(instanceInvocation)) {
        return [NSMethodSignature signatureWithObjCTypes:"v@:"];
    } else if (aSelector == @selector(instanceInvocationParam:)) {
        return [NSMethodSignature signatureWithObjCTypes:"v@:i"];
    }
    return [super methodSignatureForSelector:aSelector];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    SEL sel = anInvocation.selector;
    
    RTManagerForward *managerForward = [[RTManagerForward alloc] init];
    
    if (sel == @selector(instanceInvocation)) {
        if ([managerForward respondsToSelector:sel]) {
            [anInvocation invokeWithTarget:managerForward];
        }
    } else if (sel == @selector(instanceInvocationParam:)) {
        if ([managerForward respondsToSelector:sel]) {
            [anInvocation invokeWithTarget:managerForward];
        }
        
        int temNum;
        [anInvocation getArgument:&temNum atIndex:2];
        NSLog(@"temNum - %d", temNum+1);
    }
}

+ (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
    if (aSelector == @selector(classInvocation)) {
        return [NSMethodSignature signatureWithObjCTypes:"v@:"];
    } else if (aSelector == @selector(classInvocationParam:)) {
        return [NSMethodSignature signatureWithObjCTypes:"v@:i"];
    }
    return [super methodSignatureForSelector:aSelector];
}

+ (void)forwardInvocation:(NSInvocation *)anInvocation {
    SEL sel = anInvocation.selector;
    
    if (sel == @selector(classInvocation)) {
        if ([RTManagerForward respondsToSelector:sel]) {
            [anInvocation invokeWithTarget:[RTManagerForward class]];
        }
    } else if (sel == @selector(classInvocationParam:)) {
        if ([RTManagerForward respondsToSelector:sel]) {
            [anInvocation invokeWithTarget:[RTManagerForward class]];
        }
        
        int temNum;
        [anInvocation getArgument:&temNum atIndex:2];
        NSLog(@"temNum - %d", temNum+1);
    }
}

@end
