//
//  RecoverTree.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/28.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface RecoverTree : NSObject

// 中序遍历：时间复杂度O(n)、空间复杂度O(1)
/**
 * 上一次中序遍历过的节点
 */
@property(nonatomic, strong) TreeNode *prev;
/**
 * 第一个错误节点
 */
@property(nonatomic, strong) TreeNode *first;
/**
 * 第二个错误节点
 */
@property(nonatomic, strong) TreeNode *second;

-(void)recoverTree:(TreeNode *)root;

@end

NS_ASSUME_NONNULL_END
