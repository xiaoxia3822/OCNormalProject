//
//  BlockVC.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/15.
//

#import "BlockVC.h"

typedef void(^MyBlock)(void);

@interface BlockVC ()

@property(nonatomic, assign) MyBlock myBlock;

@end

@implementation BlockVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Block";
    
    self.myBlock = nil;
    
//    void (^block1)(void) = ^{
//        NSLog(@"------");
//    };
//
//    int age = 10;
//    void (^block2)(void) = ^{
//        NSLog(@"------ %d", age);
//    };
//
//    NSLog(@"------------------------");
//
//    NSLog(@"\n block1 -- %@ \n block2 -- %@ \n block3 -- %@ \n", [block1 class], [block2 class],
//          [^{
//            NSLog(@"%d", age);
//    } class]);
}

@end
