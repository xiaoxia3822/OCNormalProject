//
//  List.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/14.
//  Copyright © 2021 MJ Lee. All rights reserved.
//

#import "List.h"

@implementation List

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.size = 1;
    }
    return self;
}

/**
 * 清除所有元素
 */
- (void)clear { }

/**
 * 是否为空
 * return
 */
- (BOOL)isEmpty {return YES;}

/**
 * 是否包含某个元素
 * return
 */
- (BOOL)contains:(id)element {return YES;}

/**
 * 添加元素到尾部
 */
- (void)add:(id)element { }

/**
 * 获取index位置的元素
 * return
 */
- (id)get:(int)index {return self;}

/**
 * 设置index位置的元素
 * return 原来的元素ֵ
 */
- (id)set:(int)index element:(id)element {return self;}

/**
 * 在index位置插入一个元素
 */
- (void)add:(int)index element:(id)element { }

/**
 * 删除index位置的元素
 * return
 */
- (id)remove:(int)index {return self;}

/**
 * 查看元素的索引
 * return
 */
- (int)indexOf:(id)element {return 0;}
@end
