//
//  LayoutView+Load.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/10.
//

#import "LayoutView+Load.h"
#import <objc/runtime.h>

static NSString *strKey=@"strKey";

@implementation LayoutView (Load)

-(void)setStr:(NSString *)str{
    objc_setAssociatedObject(self, &strKey, str,OBJC_ASSOCIATION_COPY);
}

-(NSString*)str{
    return objc_getAssociatedObject(self, &strKey);
}


@end
