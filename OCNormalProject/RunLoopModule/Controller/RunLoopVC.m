//
//  RunLoopVC.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/15.
//

#import "RunLoopVC.h"

@interface RunLoopVC ()

@property(nonatomic, assign) NSInteger age;

@property(nonatomic, strong) NSTimer *timer1;

@end

@implementation RunLoopVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"RunLoop";
    
    self.timer1 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:YES block:^(NSTimer * _Nonnull timer) {
        NSLog(@"%ld", self.age++);
        if (self.age == 10) {
            [self.timer1 invalidate];
        }
    }];
    [[NSRunLoop currentRunLoop] addTimer:self.timer1 forMode:NSDefaultRunLoopMode];
    [self.timer1 fire];
}

- (void)dealloc {
    NSLog(@"%s", __func__);
    [self.timer1 invalidate];
}

@end
