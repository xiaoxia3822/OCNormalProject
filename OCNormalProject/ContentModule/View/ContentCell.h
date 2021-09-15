//
//  ContentCell.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/13.
//

#import <UIKit/UIKit.h>
#import "ContentModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContentCell : UICollectionViewCell

+ (NSString *)cellIdentifier;

+ (instancetype)cellWithCollectionView:(UICollectionView *)collectionView forIndexPath:(NSIndexPath *)indexPath;

- (void)reloadCell:(ContentModel *)model;

@end

NS_ASSUME_NONNULL_END
