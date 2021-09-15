//
//  ContentPresenter.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/14.
//

#import "ContentPresenter.h"
#import "ContentViewModel.h"

@interface ContentPresenter ()<ContentViewDelegate>

@end

@implementation ContentPresenter

- (instancetype)initWithVC:(ContentVC *)vc
{
    self = [super init];
    if (self) {
        self.contentVC = vc;
    }
    return self;
}

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

- (void)didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"第  %ld  个", (long)indexPath.row);
}

@end
