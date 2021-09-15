//
//  ContentVC.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/13.
//

#import "ContentVC.h"
#import "ContentView.h"
#import "ContentPresenter.h"

@interface ContentVC ()

@property(nonatomic, strong) ContentPresenter *presenter;

@property(nonatomic, strong) ContentView *contentView;

@end

@implementation ContentVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _presenter = [[ContentPresenter alloc] initWithVC:self];
    [_presenter reloadView];
    
    _contentView = [[ContentView alloc] initWithFrame:self.view.bounds];
    _contentView.delegate = self.presenter;
    [self.view addSubview:_contentView];
    [_contentView reloadView:_presenter.contentVM];
}

@end
