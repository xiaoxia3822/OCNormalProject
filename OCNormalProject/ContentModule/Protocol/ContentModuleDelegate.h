//
//  ContentModuleDelegate.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ContentModuleDelegate <NSObject>

/// 点击item
/// @param indexPath 位置
-(void)didSelectItemAtIndexPath:(NSIndexPath *_Nullable)indexPath;

@end

NS_ASSUME_NONNULL_END
