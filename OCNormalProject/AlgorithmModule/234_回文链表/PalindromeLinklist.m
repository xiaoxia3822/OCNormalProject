//
//  PalindromeLinklist.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/21.
//

#import "PalindromeLinklist.h"

@implementation PalindromeLinklist

-(BOOL)isPalindrome:(Node *)head {
    
    if (head == NULL || head.next == NULL) { return YES; }
    if (head.next.next == NULL) { return head.element == head.next.next.element; }
    
    Node *mid = [self minddleNode:head];
    Node *rHead = [self reverseList:mid.next];
    Node *lHead = head;
    
    while (rHead != NULL) {
        
        NSString *lStr = [NSString stringWithFormat:@"%@", lHead.element];
        NSString *rStr = [NSString stringWithFormat:@"%@", rHead.element];
        
        if ([lStr intValue] != [rStr intValue]) { return NO; }
        
        rHead = rHead.next;
        lHead = lHead.next;
    }
    
    return YES;
}

/**
 * 找到中间节点（右半部分链表头结点的前一个节点）
 * 比如 1>2>3>2>1中的3是中间节点
 * 比如 1>2>2>1中左边第一个2是中间节点
 */
-(Node *)minddleNode:(Node *)head {
    Node *fast = head;
    Node *slow = head;
    
    while (fast.next != NULL && fast.next.next != NULL ) {
        slow = slow.next;
        fast = fast.next.next;
    }
    
    return slow;
}

/**
 * 翻转链表
 * @param head 原链表的头结点
 * 比如原链表：1>2>3>4>null，翻转之后是：4>3>2>1>null
 * @return 翻转之后链表的头结点（返回4）
 */
-(Node *)reverseList:(Node *)head {
    
    Node *newHead = NULL;
    while (head != NULL) {
        Node *tem = head.next;
        head.next = newHead;
        newHead = head;
        head = tem;
    }
    
    return newHead;
}

@end
