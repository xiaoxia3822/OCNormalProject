//
//  ContentPresenter.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/14.
//

#import "ContentPresenter.h"
#import "ContentViewModel.h"

@interface ContentPresenter ()

@end

@implementation ContentPresenter

-(ContentViewModel *)contentVM {
    static ContentViewModel *vm = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        vm = [[ContentViewModel alloc] init];
    });
    return vm;
}

-(void)reloadView {
    [self.contentVM dealDataModels];
}

@end
