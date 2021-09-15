//
//  ContentViewModel.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ContentViewModel : NSObject

@property(nonatomic, strong) NSMutableArray *dataModels;

-(void)dealDataModels;

@end

NS_ASSUME_NONNULL_END
