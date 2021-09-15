//
//  IntersectionNode.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/21.
//

#import "IntersectionNode.h"

@implementation IntersectionNode

-(Node *)getIntersectionNode:(Node *)headA headB:(Node *)headB {
    
    if (headA == nil || headB == nil) { return nil; }
    
    Node *curA = headA;
    Node *curB = headB;

    while (curA.element != curB.element) {
        curA = (curA == nil) ? headB : curA.next;
        curB = (curB == nil) ? headA : curB.next;
    }
    
    NSLog(@"%@", curA);
    
    return curA;
}

@end
