//
//  ReverseWords.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/23.
//

#import "ReverseWords.h"
#import "NSMutableArray+Add.h"

@implementation ReverseWords

-(NSString *)reverseWords:(NSString *)s {
    
    NSMutableArray *arr = [NSMutableArray arrayCapacity:s.length];
    
    int i = 0;
    while (i < s.length) {
        char tempS = [s characterAtIndex:i];
        arr[i] = @(tempS);
        i++;
    }
    
    NSInteger index = 0;
    NSInteger cur = 0;
    while (index < s.length) {
        if (![[arr[index] stringValue] isEqual:@" "]) {
            arr[cur] = arr[index];
            cur++;
        }
        
        if ([[arr[index] stringValue] isEqual:@" "] && [[arr[index-1] stringValue] isEqual:@" "]) {
            
        }
        i++;
    }
    
    return @"";
}

@end
