//
//  SelectionSort.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/24.
//

#import "SelectionSort.h"

@implementation SelectionSort

-(void)selectionSort:(NSMutableArray *)array {
    
    for (int end = (int)array.count-1; end > 0; end--) {
        int max = 0;
        for (int begin = 1; begin <= end; begin++) {
            if ([array[max] intValue] < [array[begin] intValue]) {
                max = begin;
            }
        }
        
        int temp = [array[end] intValue];
        array[end] = array[max];
        array[max] = @(temp);
    }
    
}

@end
