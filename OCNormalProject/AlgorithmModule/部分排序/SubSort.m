//
//  SubSort.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/20.
//

#import "SubSort.h"

@implementation SubSort

-(NSMutableArray *)subSort:(NSMutableArray *)arrar {
    NSMutableArray *reslut = [NSMutableArray array];
    NSInteger l = 0;
    NSInteger r = arrar.count-1;
    NSInteger max = [[arrar firstObject] integerValue];
    NSInteger min = [[arrar lastObject] integerValue];
    
    for (int i = 1; i < arrar.count; i++) {
        if ([arrar[i] integerValue] < max) {
            l = i;
        } else if ([arrar[i] integerValue] > max) {
            max = [arrar[i] integerValue];
        }
    }
    
    for (NSInteger i = arrar.count-2; i > 0; i--) {
        if ([arrar[i] integerValue] > min) {
            r = i;
        } else if ([arrar[i] integerValue] < min) {
            min = [arrar[i] integerValue];
        }
    }
    
    NSLog(@"%ld - %ld", r, min);
    [reslut addObject:@(r)];
    [reslut addObject:@(l)];
    
    return reslut;
}

@end
