//
//  MultithreadingVC.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/15.
//

#import "MultithreadingVC.h"

@interface MultithreadingVC ()

@property(nonatomic, assign) NSInteger age;

@property(nonatomic, strong) dispatch_source_t sourceTimer;

@property(nonatomic, strong) NSTimer *timer1;

@property(nonatomic, assign) dispatch_time_t timer;

@property(nonatomic, strong) CADisplayLink *caplay;

@end

@implementation MultithreadingVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)queueOrderLog {
    dispatch_queue_t queue = dispatch_queue_create("test", DISPATCH_QUEUE_SERIAL);
    dispatch_queue_t queue2 = dispatch_queue_create("test2", DISPATCH_QUEUE_SERIAL);

    NSLog(@"1");

    dispatch_async(queue, ^{
        NSLog(@"2");
    });

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), queue, ^{
        dispatch_async(queue, ^{
            dispatch_sync(queue, ^{
                NSLog(@"3");
            });
        });
    });

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), queue, ^{
        dispatch_async(queue, ^{
            NSLog(@"4");
        });
    });

    dispatch_async(queue, ^{
        NSLog(@"5");
    });

    NSLog(@"6");
    
    static dispatch_once_t once;
    dispatch_once(&once, ^{

    });
}

- (void)test {
    // 创建队列组
    dispatch_group_t group = dispatch_group_create();
    // 创建并发队列
    dispatch_queue_t queue = dispatch_queue_create("my_queue", DISPATCH_QUEUE_CONCURRENT);
    
    // 添加异步任务
    dispatch_group_enter(group);
    dispatch_group_async(group, queue, ^{
        dispatch_async(queue, ^{
            for (int i = 0; i < 5; i++) {
                NSLog(@"任务1-%@", [NSThread currentThread]);
            }
            dispatch_group_leave(group);
        });
        
    });
    
    dispatch_group_async(group, queue, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"任务2-%@", [NSThread currentThread]);
        }
    });
    
    // 等前面的任务执行完毕后，会自动执行这个任务
//    dispatch_group_notify(group, queue, ^{
//        dispatch_async(dispatch_get_main_queue(), ^{
//            for (int i = 0; i < 5; i++) {
//                NSLog(@"任务3-%@", [NSThread currentThread]);
//            }
//        });
//    });
    
//    dispatch_group_notify(group, dispatch_get_main_queue(), ^{
//        for (int i = 0; i < 5; i++) {
//            NSLog(@"任务3-%@", [NSThread currentThread]);
//        }
//    });
    
    dispatch_group_notify(group, queue, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"任务3-%@", [NSThread currentThread]);
        }
    });
    
    dispatch_group_notify(group, queue, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"任务4-%@", [NSThread currentThread]);
        }
    });
}

-(void)timeGCD {
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//
//    dispatch_async(queue, ^{
//        self->_sourceTimer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
//        dispatch_time_t starTimer = dispatch_time(DISPATCH_TIME_NOW, 1.0 * NSEC_PER_SEC);
//
//        dispatch_source_set_timer(self->_sourceTimer, starTimer, 1.0*NSEC_PER_SEC, 0);
//
//        dispatch_source_set_event_handler(self->_sourceTimer, ^{
//            NSLog(@"执行之星 --- %ld", (long)self->_age);
//            self->_age++;
//            if (self->_age == 20) {
//                dispatch_async(dispatch_get_main_queue(), ^{
//                    self.view.backgroundColor = [UIColor greenColor];
//                });
//            }
//            dispatch_source_cancel(self->_sourceTimer);
//        });
//    });
    
    self.timer = dispatch_time(DISPATCH_TIME_NOW, 5*NSEC_PER_SEC);

    dispatch_after(self.timer, queue, ^(void){

        NSLog(@"GCD-----%@",[NSThread currentThread]);

    });
}

-(void)timeDisplay{
    [_caplay setPreferredFramesPerSecond:10];
    _caplay = [CADisplayLink displayLinkWithTarget:self selector:@selector(test:)];
    
    [_caplay addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSRunLoopCommonModes];
    
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_group_t group = dispatch_group_create();
    
    dispatch_group_async(group, queue, ^{
        sleep(0.5);
        NSLog(@"1");
    });
    dispatch_group_async(group, queue, ^{
        sleep(1.5);
        NSLog(@"2");
    });
    dispatch_group_async(group, queue, ^{
        sleep(2.5);
        NSLog(@"3");
    });

    NSLog(@"aaaaa");

    dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, 10 * NSEC_PER_SEC);
    if (dispatch_group_wait(group, time) == 0) {
        NSLog(@"已经全部执行完毕");
    }
    else {
        NSLog(@"没有执行完毕");
    }

    NSLog(@"bbbbb");
}

@end
