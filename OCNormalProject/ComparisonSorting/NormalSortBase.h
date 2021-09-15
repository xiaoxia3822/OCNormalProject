//
//  NormalSortBase.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NormalSortBase : NSObject

@property(nonatomic, strong) NSMutableArray *normalArr;
@property(nonatomic, strong) NSMutableArray *sortArr;

-(void)sort;

@end

NS_ASSUME_NONNULL_END
