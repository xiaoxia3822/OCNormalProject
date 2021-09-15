//
//  TreeNode.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/22.
//

#import "TreeNode.h"

@implementation TreeNode

- (instancetype)initWithValue:(NSInteger)value{
    self = [super init];
    if (self) {
        self.value = value;
        self.left = NULL;
        self.right = NULL;
    }
    return self;
}

@end
