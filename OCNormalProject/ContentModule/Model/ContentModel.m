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

- (instancetype)initWithCls:(NSString *)cls title:(NSString *)title {
    self = [super init];
    if (self) {
        self.cls = cls;
        self.title = title;
    }
    return self;
}

@end
