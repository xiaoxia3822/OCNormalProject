//
//  MaxProfit.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/26.
//

#import "MaxProfit.h"

@implementation MaxProfit

-(int)maxProfit:(NSArray *)prices {
    
    NSInteger min = [prices[0] integerValue];
    NSInteger max = [prices[0] integerValue];
    NSInteger index = 0;
    
    for (int i = 1; i<prices.count; i++) {
        if ([prices[i] integerValue] > min) {
            index = i;
            max = [prices[i] integerValue] - [prices[i-1] integerValue];
        } else {
            min = [prices[i] integerValue];
        }
    }
    
    NSLog(@"max - %d", (int)max);
    NSLog(@"min - %d", (int)min);
    NSLog(@"index - %d", (int)index);
    return  (int)max;
}


/// 动态规划做法
/// @param prices 数组
//-(int)maxProfit2:(NSArray *)prices {
//    NSInteger min = [prices[0] integerValue];
//    NSInteger max = [prices[0] integerValue];
//    NSInteger index = 0;
//    
//    for (int i = 1; i<prices.count; i++) {
//        if ([prices[i] integerValue] > min) {
//            index = i;
//            max = [prices[i] integerValue] - [prices[i-1] integerValue];
//        } else {
//            min = [prices[i] integerValue];
//        }
//    }
//}

@end
