//
//  CircleLinkedList.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/15.
//

#import "AbstractList.h"
#import "Node.h"

NS_ASSUME_NONNULL_BEGIN

@interface CircleLinkedList : AbstractList

@property(nonatomic, strong, nullable) Node *first;
@property(nonatomic, strong, nullable) Node *last;
@property(nonatomic, strong, nullable) Node *current;

/// 重置链表（将current指向第一个）
-(void)reset;

/// 获取下一个元素
-(NSObject *)next;

/// 删除当前node
-(NSObject *)remove;

/// 清空
-(void)clear;

/// 获取node
/// @param index 下标
-(NSObject *)get:(int)index;

/// 覆盖node
/// @param index 下标
/// @param element node
-(NSObject *)set:(int)index element:(NSObject *)element;

/// 添加node
/// @param index 下标
/// @param element 元素
-(void)add:(int)index element:(NSObject *)element;

/// 删除下标的Node
/// @param index 下标
-(NSObject *)removeForIndex:(int)index;

/// 删除某一个Node
/// @param node Node
-(NSObject *)removeNode:(Node *)node;

/// 获取下标
/// @param element Node
-(int)indexOf:(Node *)element;

/**
 * 获取index位置对应的节点对象
 */
-(Node *)node:(int)index;

@end

NS_ASSUME_NONNULL_END
