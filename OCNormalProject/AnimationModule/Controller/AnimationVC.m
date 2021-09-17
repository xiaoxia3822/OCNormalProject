//
//  AnimationVC.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/15.
//

#import "AnimationVC.h"
#import "LayoutView.h"

@interface AnimationVC ()

@property(nonatomic, strong) LayoutView *layoutView;

@end

@implementation AnimationVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"动画";
    
    _layoutView = [[LayoutView alloc]init];
    _layoutView.backgroundColor = [UIColor blueColor];
    _layoutView.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:_layoutView];
}



@end
