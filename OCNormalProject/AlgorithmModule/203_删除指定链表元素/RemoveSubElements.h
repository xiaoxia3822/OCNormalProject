//
//  RemoveSubElements.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/20.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"

NS_ASSUME_NONNULL_BEGIN

@interface RemoveSubElements : NSObject

-(LinkedList *)removeSubElements:(LinkedList *)list removeValue:(NSInteger)value;

@end

NS_ASSUME_NONNULL_END
