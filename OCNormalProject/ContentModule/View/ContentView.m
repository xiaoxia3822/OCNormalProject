//
//  ContentView.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/13.
//

#import "ContentView.h"
#import "ContentCell.h"
#import "ContentFlowLayout.h"

@interface ContentView () <UICollectionViewDelegate,UICollectionViewDataSource>

@property(nonatomic, strong) UICollectionView *collectionView;

@property(nonatomic, strong) ContentViewModel *contentVM;

@property(nonatomic, strong) ContentFlowLayout *layout;

@end

@implementation ContentView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.layout = [[ContentFlowLayout alloc]init];
        self.layout.scrollDirection = UICollectionViewScrollDirectionVertical;
        self.layout.sectionInset = UIEdgeInsetsMake(20, 20, 20, 20);
        self.layout.minimumInteritemSpacing = 20;
        
        self.collectionView = [[UICollectionView alloc]initWithFrame:self.bounds collectionViewLayout:self.layout];
        self.collectionView.dataSource = self;
        self.collectionView.delegate = self;
        self.collectionView.backgroundColor = UIColorFromRGB(0xFFFFFF);
        
        //注册item类型 这里使用系统的类型
        [self.collectionView registerClass:[ContentCell class] forCellWithReuseIdentifier:[ContentCell cellIdentifier]];
        [self addSubview:self.collectionView];
    }
    return self;
}

-(void)reloadView:(ContentViewModel *)viewModel {
    self.contentVM = viewModel;
    self.layout.itemCount = self.contentVM.dataModels.count;
    [self.collectionView reloadData];
}

#pragma mark -- UICollectionViewDataSource
//定义展示的UICollectionViewCell的个数
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _contentVM.dataModels.count;
}

//定义展示的Section的个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

//每个UICollectionView展示的内容
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ContentCell * cell = [ContentCell cellWithCollectionView:_collectionView forIndexPath:indexPath];
    [cell reloadCell:_contentVM.dataModels[indexPath.row]];
    return cell;
}

#pragma mark --UICollectionViewDelegate

//UICollectionView被选中时调用的方法
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    ContentCell * cell = [ContentCell cellWithCollectionView:_collectionView forIndexPath:indexPath];
    cell.backgroundColor = [UIColor whiteColor];
    
    if ([self.delegate respondsToSelector:@selector(didSelectItemAtIndexPath:)]) {
        [self.delegate didSelectItemAtIndexPath:indexPath];
    }
}

//返回这个UICollectionView是否可以被选择
-(BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

@end
