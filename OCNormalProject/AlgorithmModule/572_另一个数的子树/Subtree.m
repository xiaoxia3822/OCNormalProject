//
//  Subtree.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/23.
//

#import "Subtree.h"

@implementation Subtree

-(BOOL)isSubtree:(TreeNode *)root subRoot:(TreeNode*)subRoot {
    NSString *ret = [self postSerialize:root str:[[NSMutableString alloc] init]];
    NSString *ret2 = [self postSerialize:subRoot str:[[NSMutableString alloc] init]];
    return [ret containsString:ret2];
}

-(NSString *)postSerialize:(TreeNode *)node str:(NSMutableString *)str {
    if (node.left == nil) {
        [str appendString:@"#!"];
    } else {
        [self postSerialize:node.left str:str];
    }
    
    if (node.right == nil) {
        [str appendString:@"#!"];
    } else {
        [self postSerialize:node.right str:str];
    }
    
    [str appendString:[NSString stringWithFormat:@"%ld!", (long)node.value]];
    
    NSLog(@"%@", str);
    return [str copy];
}

@end
