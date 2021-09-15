//
//  Node.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/15.
//

#import <Foundation/Foundation.h>

//NS_ASSUME_NONNULL_BEGIN

@interface Node : NSObject

@property(nonatomic, strong) Node * _Nullable prev;
@property(nonatomic, strong) NSObject * _Nullable element;
@property(nonatomic, strong) Node * _Nullable next;

- (instancetype _Nullable )initPre:(nullable Node *)prev element:(NSObject *_Nullable)element next:(nullable Node *)next;

@end

//NS_ASSUME_NONNULL_END
