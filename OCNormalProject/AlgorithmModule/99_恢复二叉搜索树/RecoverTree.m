//
//  RecoverTree.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/28.
//

#import "RecoverTree.h"

@implementation RecoverTree

//二叉树的Morris遍历

-(void)recoverTree:(TreeNode *)root {
    TreeNode *node = root;
    while (node != NULL) {
        if (node.left != NULL) {
            // 找到前驱节点(predecessor)、后继节点(successor)
            TreeNode *pred = node.left;
            while (pred.right != NULL && pred.right != node) {
                pred = pred.right;
            }

            if (pred.right == NULL) {
                pred.right = node;
                node = node.left;
            } else { // pred.right == node
                [self find:node];
                pred.right = NULL;
                node = node.right;
            }
        } else {
            [self find:node];
            node = node.right;
        }
    }

    // 交换2个错误节点的值
    NSInteger tmp = self.first.value;
    self.first.value = self.second.value;
    self.second.value = tmp;
}

-(void)findWrongNodes:(TreeNode *)root {
    if (root == NULL) return;
    [self findWrongNodes:root.left];
    [self find:root];
    [self findWrongNodes:root.right];
}

-(void)find:(TreeNode *)node {
    // 出现了逆序对
    if (self.prev != NULL && self.prev.value > node.value) {
        // 第2个错误节点：最后一个逆序对中较小的那个节点
        self.second = node;

        // 第1个错误节点：第一个逆序对中较大的那个节点
        if (self.first != NULL) return;
        self.first = self.prev;
    }
    self.prev = node;
}

@end
