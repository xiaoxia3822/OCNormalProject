//
//  Anagram.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/23.
//

#import "Anagram.h"
#import "NSMutableArray+Add.h"

@implementation Anagram

-(BOOL)isAnagram:(NSString *)s t:(NSString *)t {
    
    if (s.length != t.length) { return NO; }
    if (s.length == 0 || t.length == 0) { return  NO; }
    
    NSMutableArray *arr = [NSMutableArray arrayCapacity:26];
    
    int i = 0;
    while (i < s.length) {
        char tempS = [s characterAtIndex:i];
        int index = (int)(tempS - 'a');
        NSInteger value = [arr[index] integerValue];
        arr[index] = @(++value);
        i++;
    }
    
    
    for (NSInteger l = 0; l < t.length; l++) {
        char tempT = [t characterAtIndex:l];
        NSLog(@"%c", tempT);
        int index = (int)(tempT - 'a');
        NSInteger value = [arr[index] integerValue];
        arr[index] = @(--value);
        if (arr[index] < 0) break; return NO;
    }
    
    return YES;
}

@end
