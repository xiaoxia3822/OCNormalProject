//
//  KVOVC.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/15.
//

#import "KVOVC.h"

@interface KVOVC ()

@end

@implementation KVOVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [self kvoObserve];
    });
    
}

-(void)kvoObserve{
    [self addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"age"]) {
        NSLog(@"------ %@", change);
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

@end
