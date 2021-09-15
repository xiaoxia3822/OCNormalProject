//
//  LowestCommonAncestor.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/28.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface LowestCommonAncestor : NSObject

-(TreeNode *)lowestCommonAncestor:(TreeNode*)root p:(TreeNode *)p q:(TreeNode *)q;

@end

NS_ASSUME_NONNULL_END
