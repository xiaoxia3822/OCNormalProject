//
//  InsertionSort.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/24.
//

#import "InsertionSort.h"

@implementation InsertionSort

-(void)InsertionSort:(NSMutableArray *)array {
    for (int begin = 1; begin < array.count; begin++) {
        int cur = begin;
        while (cur > 0 && [array[cur] intValue] < [array[cur-1] intValue]) {
            int temp = [array[cur] intValue];
            array[cur] = array[cur-1];
            array[cur-1] = @(temp);
            cur--;
        }
    }
}

@end
