//
//  ContentPresenter.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/14.
//

#import <Foundation/Foundation.h>
#import "ContentView.h"
#import "ContentVC.h"
#import "ContentModuleDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContentPresenter : NSObject

@property(nonatomic, weak) id<ContentModuleDelegate> delegate;

@property(nonatomic, strong) ContentViewModel *contentVM;

-(void)reloadView;

@end

NS_ASSUME_NONNULL_END
