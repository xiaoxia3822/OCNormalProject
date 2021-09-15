//
//  IntersectionNode.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/21.
//

#import <Foundation/Foundation.h>
#import "Node.h"

NS_ASSUME_NONNULL_BEGIN

@interface IntersectionNode : NSObject

-(Node *)getIntersectionNode:(Node *)headA headB:(Node *)headB;

@end

NS_ASSUME_NONNULL_END
