//
//  BubbleSort.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/16.
//

#import "BubbleSort.h"
#import "Times.h"

@implementation BubbleSort

-(void)sort {
    
    NSLog(@"%@", @1111);

    NSLog(@"%@", [Times getCurrentTimeString]);
    
    for (int end = (int)(self.normalArr.count - 1); end > 0; end--) {
        BOOL isSort = YES;
        for (int begin = 1; begin <= end; begin++) {
            if ([self.normalArr[begin] intValue] < [self.normalArr[begin-1] intValue]) {
                NSNumber *tem = self.normalArr[begin];
                self.normalArr[begin] = self.normalArr[begin-1];
                self.normalArr[begin-1] = tem;
                isSort = NO;
            }
        }
        if (isSort) {
            break;
        }
    }
    
    NSLog(@"%@", [Times getCurrentTimeString]);
    
    NSLog(@"%@", @2222);
}

@end
