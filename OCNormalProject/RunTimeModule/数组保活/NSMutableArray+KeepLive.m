//
//  NSMutableArray+KeepLive.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/26.
//

#import "NSMutableArray+KeepLive.h"
#import <objc/runtime.h>

@implementation NSMutableArray (KeepLive)

+ (void)load {
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        Class cls = NSClassFromString(@"__NSArrayM");
        Method old = class_getInstanceMethod(cls, @selector(objectAtIndex:));
        Method new = class_getInstanceMethod(cls, @selector(rt_objectAtIndex:));
        method_exchangeImplementations(old, new);
        
        Method oldM = class_getInstanceMethod(cls, @selector(objectAtIndexedSubscript:));
        Method newM = class_getInstanceMethod(cls, @selector(rt_objectAtIndexedSubscript:));
        method_exchangeImplementations(oldM, newM);
        
        Method oldAdd = class_getInstanceMethod(cls, @selector(addObject:));
        Method newAdd = class_getInstanceMethod(cls, @selector(rt_addObject:));
        method_exchangeImplementations(oldAdd, newAdd);
        
        Method oldIM = class_getInstanceMethod(cls, @selector(insertObject:atIndex:));
        Method newIM = class_getInstanceMethod(cls, @selector(rt_insertObject:atIndex:));
        method_exchangeImplementations(oldIM, newIM);
        
//        Method oldCM = class_getClassMethod(cls, @selector(class));
//        Method newCM = class_getClassMethod(cls, @selector(rt_class));
//        method_exchangeImplementations(oldCM, newCM);
    });
}

-(id)rt_objectAtIndex:(NSUInteger)index {
    if (index >= self.count) {
        NSLog(@"数组越界喽~~~");
        return nil;
    }
    return [self rt_objectAtIndex:index];
}

-(void)rt_addObject:(nullable id)object {
    if (object == nil) {
        NSLog(@"不能为空哦~~~");
    }
    [self rt_addObject:object];
}

-(id)rt_objectAtIndexedSubscript:(NSUInteger)index {
    if (index >= self.count) {
        NSLog(@"数组越界喽~~~");
        return nil;
    }
    return [self rt_objectAtIndexedSubscript:index];
}

-(void)rt_insertObject:(id)anObject atIndex:(NSUInteger)index {
    @try {
        [self rt_insertObject:anObject atIndex:index];
    } @catch (NSException *exception) {
        NSLog(@"数组越界喽~~~");
    } @finally {
//        NSLog(@"要看具体的处理了~~~");
    }
}

//+(Class)rt_class {
//    NSArray *tem = [[NSArray alloc] init];
//    return [tem class];
//    [NSMutableArray rt_class];
//}

@end
