//
//  RTJsonModel.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RTJsonModel : NSObject

@property(nonatomic, assign) NSInteger ID;
@property(nonatomic, copy) NSString *name;
@property(nonatomic, assign) NSInteger age;
@property(nonatomic, assign) NSInteger height;

@end

NS_ASSUME_NONNULL_END
