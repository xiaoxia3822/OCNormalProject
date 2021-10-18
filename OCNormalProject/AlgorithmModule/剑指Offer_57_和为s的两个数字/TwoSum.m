//
//  TwoSum.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/23.
//

#import "TwoSum.h"

@implementation TwoSum

-(void)twoSum{
    NSArray *arr = @[@0, @3, @4, @1, @6, @2, @9, @7];
    int target = 7;
    int i = 0;
    while (i < arr.count) {
        int j = i+1;
        while (j < arr.count) {
            if ([arr[i] intValue] + [arr[j] intValue] == target) {
                NSLog(@"%d -- %d",[arr[i] intValue],[arr[j] intValue]);
            }
            j++;
        }
        i++;
    }
    
}

@end
