//
//  LowestCommonAncestor.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/28.
//

#import "LowestCommonAncestor.h"

@implementation LowestCommonAncestor

-(TreeNode *)lowestCommonAncestor:(TreeNode*)root p:(TreeNode *)p q:(TreeNode *)q {
    
    if (root == nil || root == p || root == q) { return root; }
    
    TreeNode *left = [self lowestCommonAncestor:root.left p:p q:q];
    
    TreeNode *right = [self lowestCommonAncestor:root.right p:p q:q];
    
    if (left != nil && right != nil) { return root; }
    
    return (left == nil ? right : left);
}

@end
