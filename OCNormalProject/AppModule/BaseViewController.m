//
//  BaseViewController.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/15.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
//    self.hidesBottomBarWhenPushed = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.hidesBottomBarWhenPushed = YES;
    self.view.backgroundColor = UIColorFromRGB(0xFFFFFF);
}

@end
