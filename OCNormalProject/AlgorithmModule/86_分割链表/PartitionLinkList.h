//
//  PartitionLinkList.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/21.
//

#import <Foundation/Foundation.h>
#import "Node.h"

NS_ASSUME_NONNULL_BEGIN

@interface PartitionLinkList : NSObject

-(Node *)partition:(Node *)head partition:(int)x;

@end

NS_ASSUME_NONNULL_END
