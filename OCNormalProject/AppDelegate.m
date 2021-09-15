//
//  AppDelegate.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/15.
//

#import "AppDelegate.h"
#import "HomeVC.h"
#import "ContentVC.h"
#import "MineVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window.backgroundColor = UIColor.whiteColor;
    
    [self becomeRootVCL];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

-(void)becomeRootVCL{
    
    //创建控制器一
    HomeVC *home = [[HomeVC alloc] init];
    ContentVC *content = [[ContentVC alloc] init];
    MineVC *mine = [[MineVC alloc] init];
    
    home.title = @"首页";
    content.title = @"内容";
    mine.title = @"个人";
    
    home.view.backgroundColor = [UIColor colorWithRed:43.0/255.0 green:194.0/255.0 blue:108.0/255.0 alpha:1.0];
    content.view.backgroundColor = [UIColor colorWithRed:254.0/255.0 green:67.0/255.0 blue:101.0/255.0 alpha:1.0];
    mine.view.backgroundColor = [UIColor colorWithRed:69.0/255.0 green:137.0/255.0 blue:148.0/255.0 alpha:1.0];
    
    //创建分栏控制器
    UITabBarController* tbController = [[UITabBarController alloc] init];
    //设置分栏控制器整体颜色（选中状态）
    tbController.tabBar.tintColor = [UIColor colorWithRed:112.0/255.0 green:100.0/255.0 blue:225.0/255.0 alpha:1.0];
    //创建一个控制器数组对象
    //将所有的要被分栏控制器管理的对象添加到数组中
    NSArray* arrayVC = [NSArray arrayWithObjects:[[UINavigationController alloc] initWithRootViewController:home],
                        [[UINavigationController alloc] initWithRootViewController:content],
                        [[UINavigationController alloc] initWithRootViewController:mine], nil];
    //将分栏视图控制器管理数组赋值
    tbController.viewControllers = arrayVC;
    
    //将分栏控制器作为根视图控制器
    self.window.rootViewController = tbController;
}



@end
