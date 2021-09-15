//
//  ReverseLinklist.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/22.
//

#import "ReverseLinklist.h"
#import "Node.h"

@implementation ReverseLinklist

-(void)normalReverseLinklist:(Node *)head {
    
    Node *newHead = NULL;
    while (head!= NULL) {
        Node *temp = head.next;
        head.next = newHead;
        newHead = head;
        head = temp;
    }
    NSLog(@"新的首节点 - %@",newHead.element);
}

-(void)recursionReverseLinklist:(Node *)head {
    
    if (head.next == NULL) {
        NSLog(@"反转链表首节点 - %@",head.element);
        return;
    }
    
    [self recursionReverseLinklist:head.next];
    
    head.next.next = head;
    head.next = NULL;
    
    NSLog(@"反转链表节点 - %@",head.element);
}

@end
