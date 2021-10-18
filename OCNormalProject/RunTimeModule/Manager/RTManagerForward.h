//
//  RTManagerForward.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RTManagerForward : NSObject

+(void)classForward;
-(void)instanceForward;

+(void)classInvocation;
-(void)instanceInvocation;

@end

NS_ASSUME_NONNULL_END
