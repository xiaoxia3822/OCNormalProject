//
//  NSMutableArray+Add.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/22.
//

#import "NSMutableArray+Add.h"

@implementation NSMutableArray (Add)

-(void)setValue:(NSInteger)value forIndex:(NSInteger)index {
    self[index] = @(value);
}

+(instancetype)arrayCapacity:(NSUInteger)numItems {
    NSMutableArray *arr = [[super class] arrayWithCapacity:numItems];
    int i = 0;
    while (i < numItems) {
        [arr addObject:@0];
        i++;
    }
    return arr;
}

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

@end
