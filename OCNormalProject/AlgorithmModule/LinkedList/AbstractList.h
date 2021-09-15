//
//  AbstractList.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/14.
//  Copyright © 2021 MJ Lee. All rights reserved.
//

#import "List.h"

NS_ASSUME_NONNULL_BEGIN

@interface AbstractList : List

- (void)rangeCheck:(int)index;
    
- (void)rangeCheckForAdd:(int)index;

@end

NS_ASSUME_NONNULL_END
