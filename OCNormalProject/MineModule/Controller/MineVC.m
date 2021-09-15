//
//  MineVC.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/25.
//

#import "MineVC.h"
#import "LayoutView.h"

@interface MineVC ()

@property(nonatomic, strong) LayoutView *layoutView;

@end

@implementation MineVC

+ (void)load{
//    NSLog(@"MineVC --- %s", __func__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _age = 0;
    
    _layoutView = [[LayoutView alloc]init];
    _layoutView.backgroundColor = [UIColor blueColor];
    _layoutView.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:_layoutView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}

@end
