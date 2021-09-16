//
//  ContentViewModel.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/13.
//

#import "ContentViewModel.h"
#import "ContentModel.h"

@interface ContentViewModel ()

@property(nonatomic, strong) NSArray *dataArr;

@end

@implementation ContentViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.dataArr = @[@{@"title":@"多线程", @"cls":@"MultithreadingVC"},
                         @{@"title":@"内存管理", @"cls":@"MemoryManagerVC"},
                         @{@"title":@"KVO", @"cls":@"KVOVC"},
                         @{@"title":@"KVC", @"cls":@"KVCVC"},
                         @{@"title":@"Runtime", @"cls":@"RuntimeVC"},
                         @{@"title":@"Runloop", @"cls":@"RunloopVC"},
                         @{@"title":@"通知", @"cls":@"NotificationVC"},
                         @{@"title":@"Block", @"cls":@"BlockVC"},
                         @{@"title":@"网络", @"cls":@"NetWorkVC"},
                         @{@"title":@"动画", @"cls":@"AnimationVC"},
                         @{@"title":@"常见题目", @"cls":@"CommonQuestionVC"},
                         @{@"title":@"算法", @"cls":@"AlgorithmVC"}];
        self.dataModels = [NSMutableArray array];
    }
    return self;
}

-(void)dealDataModels {
    for (int i = 0; i < self.dataArr.count; i++) {
        NSDictionary *dic = self.dataArr[i];
        ContentModel *model = [[ContentModel alloc] initWithCls:dic[@"cls"] title:dic[@"title"]];
        [self.dataModels addObject:model];
    }
}

@end
