//
//  RTManager.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RTManager : NSObject

+(instancetype)shared;

+(void)classResolve;
-(void)instanceResolve;

+(void)classCustomResolve;
-(void)instanceCustomResolve;

+(void)classForward;
-(void)instanceForward;

+(void)classInvocation;
-(void)instanceInvocation;

+(void)classInvocationParam:(int)num;
-(void)instanceInvocationParam:(int)num;

@end

NS_ASSUME_NONNULL_END
