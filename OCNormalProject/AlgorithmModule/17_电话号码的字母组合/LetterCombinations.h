//
//  LetterCombinations.h
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LetterCombinations : NSObject

@property(nonatomic, strong) NSArray<NSArray *>* lettersArray;
@property(nonatomic, strong) NSArray *chars;
@property(nonatomic, strong) NSMutableString *string;/* 用来存储每一层选择的字母 */
@property(nonatomic, strong) NSMutableArray<NSString *> *list;

-(NSArray<NSString *> *)letterCombinations:(NSString *)digits;

@end

NS_ASSUME_NONNULL_END
