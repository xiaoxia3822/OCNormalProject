//
//  Permute.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Permute : NSObject

@property(nonatomic, strong) NSArray<NSArray*> *list;
@property(nonatomic, strong) NSMutableArray *nums;
@property(nonatomic, strong) NSMutableArray *result;

-(NSArray<NSArray*> *)permute:(NSArray *)nums;

@end

NS_ASSUME_NONNULL_END
