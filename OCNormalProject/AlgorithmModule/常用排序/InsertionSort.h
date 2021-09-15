//
//  InsertionSort.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InsertionSort : NSObject

@property(nonatomic, strong) NSMutableArray *array;

-(void)InsertionSort:(NSMutableArray *)array;

@end

NS_ASSUME_NONNULL_END
