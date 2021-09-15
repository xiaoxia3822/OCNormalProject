//
//  NSArray+Description.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/16.
//

#import "NSArray+Description.h"
#import <math.h>

@implementation NSArray (Description)

- (NSString *)descriptionString
{
    NSMutableString *str = [NSMutableString stringWithFormat:@"["];
    if (self.count > 0) {
        for (int i = 0; i < self.count; i++) {
            if (i == self.count-1) {
                [str appendString:[NSString stringWithFormat:@"%@]", self[i]]];
            } else {
                [str appendString:[NSString stringWithFormat:@"%@, ", self[i]]];
            }
        }
    } else {
        str = [NSMutableString stringWithFormat:@"%@", self];
    }
    return [NSString stringWithFormat:@"%@", str];
}

+(NSMutableArray *)someArrRandom:(int)random num:(int)num {
    NSMutableArray *arr = [NSMutableArray array];
    
    for (int i = 0; i < num; i++) {
        int num = arc4random()%random;
        [arr addObject:@(num)];
    }
    
    return arr;
}

+(NSMutableArray *)sortArrRandom:(int)random num:(int)num {
    NSMutableArray *arr = [NSMutableArray array];
    
    for (int i = 0; i < num; i++) {
        int num = arc4random()%random;
        if ((i > 0) && ([arr[i] intValue] < [arr[i-1] intValue])) {
            NSNumber *tem = arr[i-1];
            arr[i-1] = arr[i];
            arr[i] = tem;
        }
        [arr addObject:@(num)];
    }
    
    return arr;
}

@end
