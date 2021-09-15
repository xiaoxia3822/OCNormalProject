//
//  NSMutableArray+Add.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableArray (Add)

-(void)setValue:(NSInteger)value forIndex:(NSInteger)index;

+(instancetype)arrayCapacity:(NSUInteger)numItems;

- (NSString *)descriptionString;

@end

NS_ASSUME_NONNULL_END
