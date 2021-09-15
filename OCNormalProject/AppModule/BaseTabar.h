//
//  BaseTabar.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/15.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseTabar : UITabBar

@property (strong, nonatomic) UIButton *centerButton;

- (instancetype)initWithCenterImage:(NSString *)centerImage selectImage:(NSString *)selectImage target:(id)target action:(SEL)action;

@end

NS_ASSUME_NONNULL_END
