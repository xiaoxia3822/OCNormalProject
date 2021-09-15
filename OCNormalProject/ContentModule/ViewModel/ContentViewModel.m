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
        self.dataArr = @[@{@"title":@"多线程"}, @{@"title":@"内存管理"}, @{@"title":@"KVO"}, @{@"title":@"Runtime"}, @{@"title":@"Runloop"}, @{@"title":@"通知"}, @{@"title":@"Block"}, @{@"title":@"网络"}, @{@"title":@"动画"}, @{@"title":@"常见题目"}, @{@"title":@"算法"}];
        self.dataModels = [NSMutableArray array];
    }
    return self;
}

-(void)dealDataModels {
    for (int i = 0; i < self.dataArr.count; i++) {
        NSDictionary *dic = self.dataArr[i];
        ContentModel *mode = [[ContentModel alloc] initWithIcon:@"test" title:dic[@"title"]];
        [self.dataModels addObject:mode];
    }
}

@end
