//
//  SelectionSort.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SelectionSort : NSObject

@property(nonatomic, strong) NSMutableArray *array;

-(void)selectionSort:(NSMutableArray *)array;

@end

NS_ASSUME_NONNULL_END
