//
//  QuickSort.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/23.
//

#import "QuickSort.h"
#import "NSMutableArray+Add.h"

@implementation QuickSort

-(void)quickSort:(int)begin end:(int)end {
    
    if (end - begin < 2) return;
    
    int mid = [self pivotIndex:begin end:end];
    
    [self quickSort:begin end:mid];
    [self quickSort:mid+1 end:end];
}

-(int)pivotIndex:(int)begin end:(int)end {
    int pivot = [_array[begin] intValue];
    
    end--;
    
    while (begin < end) {
        
        while (begin < end) {
            if (pivot < [_array[end] intValue]) {
                end--;
            } else {
                _array[begin] = _array[end];
                begin++;
                break;
            }
        }
        
        while (begin < end) {
            if (pivot > [_array[begin] intValue]) {
                begin++;
            } else {
                _array[end] = _array[begin];
                end--;
                break;
            }
        }
    }
    
    _array[begin] = @(pivot);
    
    return begin;
}

@end
