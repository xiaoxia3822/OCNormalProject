//
//  ReverseLinklist.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/22.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"

NS_ASSUME_NONNULL_BEGIN

@interface ReverseLinklist : NSObject

-(void)normalReverseLinklist:(Node *)head;

-(void)recursionReverseLinklist:(Node *)head;

@end

NS_ASSUME_NONNULL_END
