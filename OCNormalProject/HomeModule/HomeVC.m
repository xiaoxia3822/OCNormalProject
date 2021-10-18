//
//  HomeVC.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/15.
//

#import "HomeVC.h"

@interface HomeVC ()
@property(nonatomic, strong) UIProgressView *progress;
@end

@implementation HomeVC

- (UIProgressView *)progress {
    if (!_progress) {
        _progress = [[UIProgressView alloc] initWithProgressViewStyle:UIProgressViewStyleBar];
        _progress.progressTintColor = [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:0.1];
        _progress.trackTintColor = [UIColor colorWithRed:255/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:0.2]; // 未加载完成的颜色
    }
    return _progress;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

@end
