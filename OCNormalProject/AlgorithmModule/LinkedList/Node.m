//
//  Node.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/15.
//

#import "Node.h"

@implementation Node

- (instancetype _Nullable )initPre:(nullable Node *)prev element:(NSObject *_Nullable)element next:(nullable Node *)next
{
    self = [super init];
    if (self) {
        self.prev = prev;
        self.element = element;
        self.next = next;
    }
    return self;
}

@end
