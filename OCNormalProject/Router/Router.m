//
//  Router.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/15.
//

#import "Router.h"
#import "BaseViewController.h"
#import <objc/runtime.h>

@implementation Router

+(void)pushViewControllerFrom:(id)fromVC to:(id)toVC animated:(BOOL)animated{
    
    NSLog(@"\n fromVC - %@ \n toVC - %@",[fromVC class], toVC);
    
    BaseViewController *form = (BaseViewController *)fromVC;
    Class to = NSClassFromString((NSString *)toVC);
    NSLog(@"\n--------------------\n");
    
    NSLog(@"\n fromVC - %@ \n toVC - %@",[fromVC class], [to class]);
    [form.navigationController pushViewController:[[to alloc] init] animated:animated];
}

@end
