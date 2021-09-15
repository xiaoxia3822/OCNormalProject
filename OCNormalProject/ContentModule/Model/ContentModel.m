//
//  ContentModel.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/13.
//

#import "ContentModel.h"

@interface ContentModel ()

@end

@implementation ContentModel

- (instancetype)initWithIcon:(NSString *)icon title:(NSString *)title
{
    self = [super init];
    if (self) {
        self.icon = icon;
        self.title = title;
    }
    return self;
}

@end
