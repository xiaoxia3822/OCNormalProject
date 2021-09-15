//
//  TreeNode.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/22.
//

#import <Foundation/Foundation.h>

//NS_ASSUME_NONNULL_BEGIN

@interface TreeNode : NSObject

@property(nonatomic, assign) NSInteger value;
@property(nonatomic, strong, nullable) TreeNode *left;
@property(nonatomic, strong, nullable) TreeNode *right;

- (instancetype _Nullable )initWithValue:(NSInteger)value;

@end

//NS_ASSUME_NONNULL_END
