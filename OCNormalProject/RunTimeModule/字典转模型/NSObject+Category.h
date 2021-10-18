//
//  NSObject+Category.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Category)

+(instancetype)rt_modelWithJson:(NSDictionary *)json;

@end

NS_ASSUME_NONNULL_END
