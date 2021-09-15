//
//  MaxValue.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/24.
//

#import "MaxValue.h"

@implementation MaxValue
-(int)maxValue:(NSArray<NSArray *>*)grid {
    NSInteger rows = grid.count;
    NSInteger cols = grid[0].count;
    
    NSMutableArray<NSMutableArray *>* arr = [NSMutableArray array];
    
    for (int i = 0; i < rows; i++) {
        NSMutableArray *temArr = [NSMutableArray arrayWithCapacity:cols];
        for (int j = 0; j < cols; j++) {
            [temArr addObject:@(0)];
        }
        [arr addObject:temArr];
    }
    arr[0][0] = grid[0][0];
    
    for (int col = 1; col < cols; col++) {
        int left = [[NSString stringWithFormat:@"%@", arr[0][col-1]] intValue];
        int next = [[NSString stringWithFormat:@"%@", grid[0][col]] intValue];
        arr[0][col] = @((int)left + (int)next);
    }
    
    for (int row = 1; row < rows; row++) {
        int left = [[NSString stringWithFormat:@"%@", arr[row-1][0]] intValue];
        int next = [[NSString stringWithFormat:@"%@", grid[row][0]] intValue];
        arr[row][0] = @((int)left + (int)next);
    }
    
    for (int row = 1; row < rows; row++) {
        for (int col = 1; col < cols; col++) {
            int top = [[NSString stringWithFormat:@"%@", arr[row-1][col]] intValue];
            int left = [[NSString stringWithFormat:@"%@", arr[row][col-1]] intValue];
            int next = [[NSString stringWithFormat:@"%@", grid[row][col]] intValue];
            arr[row][col] = @((top > left ? top : left) + next);
        }
    }
    
    NSLog(@"%@", arr);
    
    return 1;
}
@end
