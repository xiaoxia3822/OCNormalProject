//
//  QuickSort.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuickSort : NSObject

@property(nonatomic, strong) NSMutableArray *array;

-(void)quickSort:(int)begin end:(int)end;

@end

NS_ASSUME_NONNULL_END
