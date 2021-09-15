//
//  AbstractList.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/14.
//  Copyright © 2021 MJ Lee. All rights reserved.
//

#import "AbstractList.h"

@interface AbstractList()

@end

@implementation AbstractList

/**
 * 是否为空
 * return
 */
- (BOOL)isEmpty {return self.size == 0;}

/**
 * 是否包含某个元素
 * return
 */
- (BOOL)contains:(id)element {
    return [self indexOf:element] != ELEMENT_NOT_FOUND;
}

/**
 * 添加元素到尾部
 */
- (void)add:(id)element {
    [self add:self.size element:element];
}

- (void)outOfBounds:(int)index {
    [NSException raise:@"出问题了" format:@"Index: %d, Size: %d", index, self.size];
}
    
- (void) rangeCheck:(int)index {
    if (index < 0 || index >= self.size) {
        [self outOfBounds:index];
    }
}
    
- (void) rangeCheckForAdd:(int)index  {
    if (index < 0 || index > self.size) {
        [self outOfBounds:index];
    }
}

@end
