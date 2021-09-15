//
//  NormalSortBase.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/16.
//

#import "NormalSortBase.h"
#import "NSArray+Description.h"

@implementation NormalSortBase

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.normalArr = [NSMutableArray someArrRandom:100000 num:3000];
        self.sortArr = [NSMutableArray sortArrRandom:100000 num:3000];
    }
    return self;
}

-(void)sort { }

@end
