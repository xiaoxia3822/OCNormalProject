//
//  FlipedString.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/23.
//

#import "FlipedString.h"

@implementation FlipedString

-(BOOL)isFlipedString:(NSString *)s1 s2:(NSString *)s2 {
    if (s1.length == 0 || s2.length == 0) { return NO; }
    
    return [[NSString stringWithFormat:@"%@%@", s1, s1] containsString:s2];
}

@end
