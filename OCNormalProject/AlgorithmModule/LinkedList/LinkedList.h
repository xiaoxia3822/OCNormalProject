//
//  LinkedList.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/14.
//  Copyright © 2021 MJ Lee. All rights reserved.
//

#import "AbstractList.h"
#import "Node.h"

NS_ASSUME_NONNULL_BEGIN

@interface LinkedList : AbstractList

@property(nonatomic, strong, nullable) Node *first;
@property(nonatomic, strong, nullable) Node *last;

/// 清空链表
-(void)clear;

/// 获取Node
/// @param index 下标
-(NSObject *)getElement:(int)index;

/// 设置Node
/// @param index 下标
/// @param element Node
-(Node *)setElement:(int)index element:(NSObject *)element;

/**
 * 获取index位置对应的节点对象
 */
-(Node *)node:(int)index;

/// 添加了链表元素
/// @param index 下标
/// @param element Node
-(void)add:(int)index element:(NSObject *)element;

/// 删除某个元素
/// @param index 下标
-(Node *)remove:(int)index;

/// 获取元素位置
/// @param element Node
-(int)indexOf:(NSObject *)element;
@end

NS_ASSUME_NONNULL_END
