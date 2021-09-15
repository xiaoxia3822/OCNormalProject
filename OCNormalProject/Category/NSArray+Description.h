//
//  NSArray+Description.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (Description)

+(NSMutableArray *)someArrRandom:(int)random num:(int)num;

+(NSMutableArray *)sortArrRandom:(int)random num:(int)num;

- (NSString *)descriptionString;

@end

NS_ASSUME_NONNULL_END
