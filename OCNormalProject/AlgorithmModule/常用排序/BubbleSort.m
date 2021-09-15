//
//  BubbleSort.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/24.
//

#import "BubbleSort.h"

@implementation BubbleSort

-(void)bubbleSort:(NSMutableArray *)array {
    
    for (int end = (int)array.count; end > 0; end--) {
        for (int begin = 1; begin < end; begin++) {
            if ([array[begin] intValue] < [array[begin-1] intValue]) {
                int temp = [array[begin] intValue];
                array[begin] = array[begin-1];
                array[begin-1] = @(temp);
            }
        }
    }
    
}

@end
