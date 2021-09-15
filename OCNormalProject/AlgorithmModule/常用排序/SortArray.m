//
//  SortArray.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/24.
//

#import "SortArray.h"
#import "QuickSort.h"
#import "BubbleSort.h"
#import "SelectionSort.h"
#import "InsertionSort.h"
#import "NSMutableArray+Add.h"

@implementation SortArray

-(void)quickSort{
    QuickSort *quickSort = [[QuickSort alloc] init];
    quickSort.array = [NSMutableArray arrayWithArray:@[@5, @3, @7, @4, @1, @9, @8, @2, @6]];
    NSLog(@"快排前--------%@", [quickSort.array descriptionString]);
    [quickSort quickSort:0 end:(int)(quickSort.array.count)];
    NSLog(@"快排后--------%@", [quickSort.array descriptionString]);
}

-(void)bubbleSort {
    BubbleSort *bubbleSort = [[BubbleSort alloc] init];
    NSMutableArray *array = [NSMutableArray arrayWithArray:@[@5, @3, @7, @4, @1, @9, @8, @2, @6]];
    NSLog(@"冒泡前--------%@", [array descriptionString]);
    [bubbleSort bubbleSort:array];
    NSLog(@"冒泡后--------%@", [array descriptionString]);
}

-(void)InsertionSort {
    InsertionSort *insertionSort = [[InsertionSort alloc] init];
    NSMutableArray *array = [NSMutableArray arrayWithArray:@[@5, @3, @7, @4, @1, @9, @8, @2, @6]];
    NSLog(@"插入前--------%@", [array descriptionString]);
    [insertionSort InsertionSort:array];
    NSLog(@"插入后--------%@", [array descriptionString]);
}

-(void)selectionSort {
    SelectionSort *selectionSort = [[SelectionSort alloc] init];
    NSMutableArray *array = [NSMutableArray arrayWithArray:@[@5, @3, @7, @4, @1, @9, @8, @2, @6]];
    NSLog(@"选择前--------%@", [array descriptionString]);
    [selectionSort selectionSort:array];
    NSLog(@"选择后--------%@", [array descriptionString]);
}

@end
