//
//  Subtree.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/23.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface Subtree : NSObject

-(BOOL)isSubtree:(TreeNode *)root subRoot:(TreeNode*)subRoot;

@end

NS_ASSUME_NONNULL_END
