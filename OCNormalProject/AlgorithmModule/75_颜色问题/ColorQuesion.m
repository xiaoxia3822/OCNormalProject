//
//  ColorQuesion.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/20.
//

#import "ColorQuesion.h"

@implementation ColorQuesion

-(void)sortColors:(NSMutableArray *)arr{
    NSInteger i = 0;
    NSInteger l = 0;
    NSInteger r = arr.count-1;
    
    while (i <= r) {
        if ([arr[i] intValue] == 0) {
            [self swap:arr i:i++ j:l++];
        } else if ([arr[i] intValue] == 1) {
            i++;
        } else {
            [self swap:arr i:i++ j:r--];
        }
    };
    
    NSLog(@"%@", arr);
}

-(void)swap:(NSMutableArray *)arr i:(NSInteger)i j:(NSInteger)j {
    NSInteger tem = [arr[i] integerValue];
    arr[i] = arr[j];
    arr[j] = @(tem);
}

@end
