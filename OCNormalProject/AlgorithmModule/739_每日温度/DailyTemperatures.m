//
//  DailyTemperatures.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/22.
//

#import "DailyTemperatures.h"
#import "StackList.h"
#import "NSMutableArray+Add.h"

@implementation DailyTemperatures

-(NSArray *)dailyTemperatures:(NSArray *)temperatures {
    
    NSMutableArray *result = [NSMutableArray arrayCapacity:temperatures.count];
    
    StackList *stack = [[StackList alloc] initWithCapacity:temperatures.count];
    
    for (NSInteger i = 0; i < temperatures.count; i++) {
        
        while (![stack isEmpty] && [[NSString stringWithFormat:@"%@", temperatures[i]] integerValue] > [[NSString stringWithFormat:@"%@", temperatures[[stack top]]] integerValue]) {
            [result setValue:(i - [stack top]) forIndex:[stack top]];
            [stack pop];
        }
        [stack push:i];
    }
    
    return result;
}

@end
