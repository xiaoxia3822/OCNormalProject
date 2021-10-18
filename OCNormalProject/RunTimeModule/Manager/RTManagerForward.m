//
//  RTManagerForward.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/26.
//

#import "RTManagerForward.h"

@implementation RTManagerForward

+(void)classForward {
    NSLog(@"%s", __func__);
}

-(void)instanceForward {
    NSLog(@"%s", __func__);
}

+(void)classInvocation {
    NSLog(@"%s", __func__);
}

-(void)instanceInvocation {
    NSLog(@"%s", __func__);
}

+(void)classInvocationParam:(int)num {
    NSLog(@"%s", __func__);
}

-(void)instanceInvocationParam:(int)num {
    NSLog(@"%s", __func__);
}

@end
