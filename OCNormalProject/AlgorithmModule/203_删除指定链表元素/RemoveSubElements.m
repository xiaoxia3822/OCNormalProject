//
//  RemoveSubElements.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/20.
//
//  https://leetcode-cn.com/problems/remove-linked-list-elements/

#import "RemoveSubElements.h"
#import "Node.h"

@implementation RemoveSubElements

-(LinkedList *)removeSubElements:(LinkedList *)list removeValue:(NSInteger)value{
    
    LinkedList *newList = [[LinkedList alloc] init];
    newList.first = [[Node alloc] initPre:NULL element:@"0" next:NULL];
     
    NSLog(@"%@", newList);
    
    int i = 0;
    while (i < list.size) {
        NSString *str = [NSString stringWithFormat:@"%@", (Node *)[list node:i].element];
        if ([str integerValue] != value) {
            NSString *newHeadstr = [NSString stringWithFormat:@"%@", (Node *)[list node:0].element];
            if ([newHeadstr integerValue] == 0) {
                [newList add:0 element:str];
            } else {
                [newList add:newList.size element:str];
            }
        }
        i++;
        NSLog(@"%d", i);
    }
    
    NSLog(@"%@", newList);
    
    return newList;
}

-(Node *)removeSubNodes:(Node *)list removeValue:(NSInteger)value {
    Node *newHead = NULL;
    
    return newHead;
}

@end
