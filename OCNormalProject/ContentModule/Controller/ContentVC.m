//
//  ContentVC.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/13.
//

#import "ContentVC.h"
#import "ContentView.h"
#import "ContentPresenter.h"
#import "ContentModuleDelegate.h"
#import "ContentModel.h"

@interface ContentVC ()<ContentModuleDelegate>

@property(nonatomic, strong) ContentPresenter *presenter;

@property(nonatomic, strong) ContentView *contentView;

@end

@implementation ContentVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _presenter = [[ContentPresenter alloc] init];
    _presenter.delegate = self;
    [_presenter reloadView];
    
    _contentView = [[ContentView alloc] initWithFrame:self.view.bounds];
    _contentView.delegate = self;
    [self.view addSubview:_contentView];
    [_contentView reloadView:_presenter.contentVM];
}

- (void)didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    ContentModel *model = _presenter.contentVM.dataModels[indexPath.row];
    [Router pushViewControllerFrom:self to:model.cls animated:true];
}

@end
