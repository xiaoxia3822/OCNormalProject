//
//  Router.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/15.
//

#import "Router.h"
#import "BaseViewController.h"
#import <objc/runtime.h>
#import "NetWorkVC.h"

@implementation Router

+(void)pushViewControllerFrom:(id)fromVC to:(id)toVC animated:(BOOL)animated{
    
    NSLog(@"\n fromVC - %@ \n toVC - %@",[fromVC class], toVC);
    
    BaseViewController *form = (BaseViewController *)fromVC;
//    Class to = NSClassFromString((NSString *)toVC); //常规方法
    Class to = objc_getClass([(NSString *)toVC UTF8String]); //RunTime方法
    
    BaseViewController *to1 = [[to alloc] init];
    NSLog(@"\n--------------------\n");
    if ([form isKindOfClass:[BaseViewController class]] && [to1 isKindOfClass:[BaseViewController class]]) {
        NSLog(@"\n fromVC - %@ \n toVC - %@",[fromVC class], [to1 class]);
        [form.navigationController pushViewController:to1 animated:animated];
    }
}

@end
