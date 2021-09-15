//
//  AppDelegate.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/15.
//

#import "AppDelegate.h"
#import "BaseTabBarVC.h"

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
    self.window.rootViewController = [[BaseTabBarVC alloc] init];
}



@end
