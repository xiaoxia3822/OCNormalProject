//
//  RTViewCntroller.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/24.
//

#import "RTViewCntroller.h"
#import <objc/runtime.h>
#import "RTManager.h"
#import "NSMutableArray+KeepLive.h"
#import "NSObject+Category.h"
#import "RTJsonModel.h"

@interface RTViewCntroller ()

@property(nonatomic, strong) RTManager *manager;

@end

@implementation RTViewCntroller

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Runtime";
    
//    [self methodForwarding];
    [self keepAliveArray];
    
}

#pragma mark - 消息转发
-(void)methodForwarding {
    _manager = [RTManager shared];

#pragma mark - 是否动态添加方法
    [RTManager classResolve];
    [_manager instanceResolve];
#pragma mark - 自定义添加方法
    [RTManager classCustomResolve];
    [_manager instanceCustomResolve];
#pragma mark - 快转发
    [RTManager classForward];
    [_manager instanceForward];
#pragma mark - 慢转发
    [RTManager classInvocation];
    [_manager instanceInvocation];
#pragma mark - 慢转发含参数
    [_manager instanceInvocationParam:10];
    [RTManager classInvocationParam:20];
}

#pragma mark - 数组保活
-(void)keepAliveArray {
    NSMutableArray *arr = @[@"1", @"2", @"3"].mutableCopy;
    [arr insertObject:@"4" atIndex:6];
    [arr addObject:nil];
    NSLog(@"%@", arr[100]);
    NSLog(@"%@", [arr class]);
}

#pragma mark - 字典转模型
-(void)jsonToMdel {
    NSDictionary *dic = @{@"id":@686868, @"name":@"Jayce", @"age":@20, @"height": @185};
    RTJsonModel *model = [RTJsonModel rt_modelWithJson:dic];
    NSLog(@"\n id - %ld \n name - %@ \n age - %ld \n height - %ld", (long)model.ID, model.name, (long)model.age, (long)model.height);
}

@end
