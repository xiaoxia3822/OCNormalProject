//
//  List.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/14.
//  Copyright © 2021 MJ Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

static int ELEMENT_NOT_FOUND = -1;

@interface List : NSObject

/**
 * 元素的数量
 */
@property(nonatomic, assign) int size;

/**
 * 清除所有元素
 */
- (void)clear;

/**
 * 是否为空
 * return
 */
- (BOOL)isEmpty;

/**
 * 是否包含某个元素
 * @param element
 * return
 */
- (BOOL)contains:(id)element;

/**
 * 添加元素到尾部
 */
- (void)add:(id)element;

/**
 * 获取index位置的元素
 * return
 */
- (id)get:(int)index;

/**
 * 设置index位置的元素
 * return 原来的元素ֵ
 */
- (id)set:(int)index element:(id)element;

/**
 * 在index位置插入一个元素
 */
- (void)add:(int)index element:(id)element;

/**
 * 删除index位置的元素
 * return
 */
- (id)remove:(int)index ;

/**
 * 查看元素的索引
 * return
 */
- (int)indexOf:(id)element;

@end

NS_ASSUME_NONNULL_END
