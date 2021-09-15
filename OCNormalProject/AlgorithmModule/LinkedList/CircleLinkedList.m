//
//  CircleLinkedList.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/15.
//

#import "CircleLinkedList.h"

@implementation CircleLinkedList

-(void)reset {
    self.current = self.first;
}

-(NSObject *)next {
    if (self.current == NULL) return NULL;
    
    self.current = self.current.next;
    return self.current.element;
}

-(NSObject *)remove {
    if (self.current == NULL) return NULL;
    
    Node *next = self.current.next;
    NSObject *element = [self removeNode:self.current];
    if (self.size == 0) {
        self.current = NULL;
    } else {
        self.current = next;
    }
    
    return element;
}

-(void)clear {
    self.size = 0;
    self.first = NULL;
    self.last = NULL;
}

-(NSObject *)get:(int)index {
    return [self node:index].element;
}

-(NSObject *)set:(int)index element:(NSObject *)element {
    Node *node = [self node:index];
    NSObject *old = node.element;
    node.element = element;
    return old;
}

-(void)add:(int)index element:(NSObject *)element {
    [self rangeCheckForAdd:index];
    // size == 0
    // index == 0
    if (index == self.size) { // 往最后面添加元素
        Node *oldLast = self.last;
        self.last = [[Node alloc] initPre:oldLast element:element next:self.first];
        if (oldLast == NULL) { // 这是链表添加的第一个元素
            self.first = self.last;
            self.first.next = self.first;
            self.first.prev = self.first;
        } else {
            oldLast.next = self.last;
            self.first.prev = self.last;
        }
    } else {
        Node *next = [self node:index];
        Node *prev = next.prev;
        Node *node = [[Node alloc] initPre:prev element:element next:next];
        next.prev = node;
        prev.next = node;
        
        if (next == self.first) { // index == 0
            self.first = node;
        }
    }
    
    self.size++;
}

-(NSObject *)removeForIndex:(int)index {
    [self rangeCheck:index];
    return [self removeNode:[self node:index]];
}

-(NSObject *)removeNode:(Node *)node {
    if (self.size == 1) {
        self.first = NULL;
        self.last = NULL;
    } else {
        Node *prev = node.prev;
        Node *next = node.next;
        prev.next = next;
        next.prev = prev;
        
        if (node == self.first) { // index == 0
            self.first = next;
        }
        
        if (node == self.last) { // index == size - 1
            self.last = prev;
        }
    }
    
    self.size--;
    return node.element;
}
-(int)indexOf:(Node *)element {
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
