//
//  Router.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/15.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Router : NSObject

+(void)pushViewControllerFrom:(id)fromVC to:(id)toVC animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
