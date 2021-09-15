//
//  MaximumBinaryTree.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/22.
//

#import "MaximumBinaryTree.h"

@implementation MaximumBinaryTree

-(TreeNode *)constructMaximumBinaryTree:(NSArray *)nums {
    return [self findMaxValue:nums l:0 r:nums.count];
}

-(TreeNode *)findMaxValue:(NSArray *)nums l:(NSInteger)l r:(NSInteger)r {
    
    if (l == r) { return NULL; }
    
    NSInteger max = [nums[l] integerValue];
    NSInteger maxIndex = l;
    for (NSInteger i = l+1; i<r; i++) {
        if ([nums[i] integerValue] > max) {
            max = [nums[i] integerValue];
            maxIndex = i;
        }
    }
    
    TreeNode *rootNode = [[TreeNode alloc] initWithValue:max];;
    rootNode.left = [self findMaxValue:nums l:l r:maxIndex];
    rootNode.right = [self findMaxValue:nums l:maxIndex+1 r:r];
    
    return rootNode;
}

@end
