//
//  BaseNaViewController.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/16.
//

#import "BaseNaViewController.h"

@interface BaseNaViewController ()

@end

@implementation BaseNaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
//    self.topViewController.hidesBottomBarWhenPushed = YES;
//    NSArray *viewControllers = self.navigationController.viewControllers;
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    [super pushViewController:viewController animated:animated];
}

@end
