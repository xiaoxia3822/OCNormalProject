//
//  AddTwoNumbers.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/20.
//
//  https://leetcode-cn.com/problems/add-two-numbers/

#import "AddTwoNumbers.h"

@implementation AddTwoNumbers

-(Node *)addTwoNumbers:(Node *)first second:(Node *)second{
    
    if (first == NULL) { return second; }
    if (second == NULL) { return first; }
    LinkedList *result = [[LinkedList alloc] init];
    Node *newHead = [[Node alloc] initPre:NULL element:@"0" next:NULL];
    Node *newLast = newHead;
    NSInteger carry = 0;
    while (first != NULL || second != NULL) {
        NSInteger v1 = 0;
        if (first != NULL) {
            v1 = [[NSString stringWithFormat:@"%@", first.element] integerValue];
            first = first.next;
        }
        NSInteger v2 = 0;
        if (second != NULL) {
            v2 = [[NSString stringWithFormat:@"%@", second.element] integerValue];
            second = second.next;
        }
        NSInteger sum = v1 + v2 + carry;
        carry = sum/10;
        
        newLast.next = [[Node alloc] initPre:NULL element:[NSString stringWithFormat:@"%ld", sum%10] next:NULL];
        newLast = newLast.next;
        
        NSString *str = [NSString stringWithFormat:@"%@", newLast.element];
        [result add:str];
    }
    if (carry > 0) {
        newLast.next = [[Node alloc] initPre:NULL element:[NSString stringWithFormat:@"%ld", carry] next:NULL];
        NSString *str = [NSString stringWithFormat:@"%@", newLast.next.element];
        [result add:str];
    }
    NSLog(@"%@", result);
    return newHead.next;
}

@end
