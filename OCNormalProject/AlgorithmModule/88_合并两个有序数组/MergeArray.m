//
//  MergeArray.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/20.
//
//  https://leetcode-cn.com/problems/merge-sorted-array/

#import "MergeArray.h"

@implementation MergeArray

// nums1 = [1,3,5,0,0,0], m = 3
// nums2 = [2,4,6],       n = 3

-(void)mergeArr:(NSMutableArray *)arr1 m:(int)m arr:(NSMutableArray *)arr2 n:(int)n {
    int i1 = m-1;
    int i2 = n-1;
    NSInteger cur = arr1.count-1;
    
    while (i2 >= 0) {
        if (i1 >= 0 && [arr2[i2] intValue] < [arr1[i1] intValue]) {
            arr1[cur--] = arr1[i1--];
        } else {
            arr1[cur--] = arr2[i2--];
        }
    };
    NSLog(@"%@", arr1);
}

@end
