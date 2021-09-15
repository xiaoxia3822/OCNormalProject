//
//  ContentView.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/13.
//

#import "BaseView.h"
#import "ContentViewModel.h"

@protocol ContentViewDelegate <NSObject>

-(void)didSelectItemAtIndexPath:(NSIndexPath *_Nullable)indexPath;

@end

NS_ASSUME_NONNULL_BEGIN

@interface ContentView : BaseView

@property(nonatomic, weak) id<ContentViewDelegate> delegate;

-(void)reloadView:(ContentViewModel *)viewModel;

@end

NS_ASSUME_NONNULL_END
