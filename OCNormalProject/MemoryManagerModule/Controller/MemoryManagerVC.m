//
//  MemoryManagerVC.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/16.
//

#import "MemoryManagerVC.h"

@interface MemoryManagerVC ()<NSCopying>

@property(nonatomic, strong) NSMutableArray *arr;

@property(nonatomic, strong) NSMutableDictionary *dic;

@end

@implementation MemoryManagerVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"内存管理";
    
//    NSLog(@"%@", self.arr);
    _arr = [NSMutableArray array];
    [_arr addObject:@"123"];
    
    _dic = [NSMutableDictionary dictionary];
    [_dic setValue:_arr forKey:@"111"];
    NSLog(@"%@", _dic);
    
    NSMutableDictionary *temDic = [_dic mutableCopy];
    NSArray *arr = temDic[@"111"];
    NSLog(@"%p", arr);
    NSLog(@"%p", _arr);
}

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    return self;
}

+ (NSUInteger)hash{
    return arc4random()%100000;
}

@end
