//
//  NotificationVC.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/15.
//

#import "NotificationVC.h"

@interface NotificationVC ()

@end

@implementation NotificationVC

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(test:) name:@"testtest" object:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)test:(NSNotification *)notification {
    NSLog(@"接收通知 currentThread : %@", [NSThread currentThread]);
    NSLog(@"当前线程: %@",[NSThread currentThread]);
    dispatch_async(dispatch_get_main_queue(), ^{
        self.view.backgroundColor = [UIColor colorWithRed:(arc4random()%255)/255.0 green:(arc4random()%255)/255.0 blue:(arc4random()%255)/255.0 alpha:1];
    });
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [[NSThread currentThread] setName:@"主主主主主主线程"];
//    NSLog(@"发送通知 currentThread : %@", [NSThread currentThread].name);
//    [[NSNotificationCenter defaultCenter] postNotificationName:@"testtest" object:nil];
    
//    self.view.backgroundColor = [UIColor redColor];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    dispatch_queue_t queue = dispatch_queue_create("test", DISPATCH_QUEUE_SERIAL);
//    dispatch_async(queue, ^{
//        [[NSThread currentThread] setName:@"子子子子子子线程"];
//        NSLog(@"发送通知 currentThread : %@", [NSThread currentThread].name);
//        [[NSNotificationCenter defaultCenter] postNotificationName:@"testtest" object:nil];
//    });
}

@end
