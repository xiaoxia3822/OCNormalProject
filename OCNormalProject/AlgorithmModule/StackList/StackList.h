//
//  StackList.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface StackList : NSObject

- (instancetype)initWithCapacity:(NSInteger)capacity;

-(NSInteger)size;

-(void)push:(NSInteger)value;

-(NSInteger)pop;

-(NSInteger)top;

-(void)clear;

-(BOOL)isEmpty;

@end

NS_ASSUME_NONNULL_END
