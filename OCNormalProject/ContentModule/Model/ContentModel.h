//
//  ContentModel.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ContentModel : NSObject

@property(nonatomic, strong) NSString *icon;

@property(nonatomic, strong) NSString *title;

- (instancetype)initWithIcon:(NSString *)icon title:(NSString *)title;

@end

NS_ASSUME_NONNULL_END
