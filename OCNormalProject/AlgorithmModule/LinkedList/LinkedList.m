//
//  LinkedList.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/14.
//  Copyright © 2021 MJ Lee. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.size = 0;
    }
    return self;
}

/// 清空链表
-(void)clear {
    self.size = 0;
    self.first = NULL;
    self.last = NULL;
}

/// 获取Node
/// @param index 下标
-(NSObject *)getElement:(int)index {
    return [self node:index].element;
}

/// 设置Node
/// @param index 下标
/// @param element Node
-(NSObject *)setElement:(int)index element:(NSObject *)element {
    Node *node = [self node:index];
    NSObject *old = node.element;
    node.element = element;
    return old;
}

/**
 * 获取index位置对应的节点对象
 */
-(Node *)node:(int)index {
    [self rangeCheck:index];
    
    if (index < (self.size >> 1)) {
        Node *node = self.first;
        for (int i = 0; i < index; i++) {
            node = node.next;
        }
        return node;
    } else {
        Node *node = self.last;
        for (int i = self.size - 1; i > index; i--) {
            node = node.prev;
        }
        return node;
    }
}


/// 添加了链表元素
/// @param index 下标
/// @param element Node
-(void)add:(int)index element:(NSObject *)element {
    [self rangeCheckForAdd:index];

    if (index == self.size) { // 往最后面添加元素
        Node *oldLast = self.last;
        self.last = [[Node alloc] initPre:oldLast element:element next:NULL];
        if (oldLast == NULL) { // 这是链表添加的第一个元素
            self.first = self.last;
        } else {
            oldLast.next = self.last;
        }
    } else {
        Node *next = [self node:index];
        Node *prev = next.prev;
        Node *node = [[Node alloc] initPre:prev element:element next:next];
        next.prev = node;
        
        if (prev == NULL) { // index == 0
            self.first = node;
        } else {
            prev.next = node;
        }
    }
    
    self.size++;
}

/// 删除某个元素
/// @param index 下标
-(NSObject *)remove:(int)index {
    [self rangeCheck:index];
    Node *node = [self node:index];
    Node *prev = node.prev;
    Node *next = node.next;
        
    if (prev == NULL) { // index == 0
        self.first = next;
    } else {
        prev.next = next;
    }
    
    if (next == NULL) { // index == size - 1
        self.last = prev;
    } else {
        next.prev = prev;
    }
    
    self.size--;
    return node.element;
}

/// 获取元素位置
/// @param element Node
-(int)indexOf:(NSObject *)element {
    if (element == NULL) {
        Node *node = self.first;
        for (int i = 0; i < self.size; i++) {
            if (node.element == NULL) return i;
            
            node = node.next;
        }
    } else {
        Node *node = self.first;
        for (int i = 0; i < self.size; i++) {
            if ([element isEqual:node.element]) return i;
            
            node = node.next;
        }
    }
    return ELEMENT_NOT_FOUND;
}

-(NSString *)description{
    NSMutableString *string = [NSMutableString stringWithFormat:@"size = %d, [", self.size];
    Node *node = self.first;
    for (int i = 0; i < self.size; i++) {
        if (i != 0) {
            [string appendString:@", "];
        }
        
        [string appendString:[NSString stringWithFormat:@"%@", node.element]];
        
        node = node.next;
    }
    [string appendString:@"]"];
    return [NSString stringWithFormat:@"%@", string];
}

@end
