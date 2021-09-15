//
//  PartitionLinkList.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/21.
//

#import "PartitionLinkList.h"

@implementation PartitionLinkList

-(Node *)partition:(Node *)head partition:(int)x {
    
    Node *lHead = [[Node alloc] initPre:NULL element:@"0" next:NULL];
    Node *lLast = lHead;
    Node *rHead = [[Node alloc] initPre:NULL element:@"0" next:NULL];
    Node *rLast = rHead;
    
    while (head != nil) {
        NSString *value = [NSString stringWithFormat:@"%@", head.element];
        
        if ([value intValue] < x) {
            lLast.next = head;
            lLast = head;
        } else {
            rLast.next = head;
            rLast = head;
        }
        head = head.next;
    }
    
    rLast.next = NULL;
    lLast.next = rHead.next;
    
    return lHead.next;
}

@end
