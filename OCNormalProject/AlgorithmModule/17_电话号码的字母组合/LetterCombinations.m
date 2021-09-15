//
//  LetterCombinations.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/29.
//

#import "LetterCombinations.h"

@implementation LetterCombinations

-(NSArray<NSString *> *)letterCombinations:(NSString *)digits {
    if (digits.length == 0) return @[@""];
    self.list = [NSMutableArray array];
    self.chars = [digits componentsSeparatedByString:@""];
    if (self.chars.count == 0) return self.list;
    self.string = @"".mutableCopy;
    [self dfs:0];
    return [self.list copy];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.lettersArray = @[@[@"a",@"b",@"c"],@[@"d",@"e",@"f"], @[@"g",@"h",@"i"],@[@"j",@"k",@"l"],@[@"m",@"n",@"o"],@[@"p",@"q",@"r",@"s"],@[@"t",@"u",@"v"],@[@"w",@"x",@"y",@"z"]];
    }
    return self;
}

/**
 * @param idx 正在搜索第idx层
 */
-(void)dfs:(int)idx {
    // 已经进入到最后一层了，不能再往下搜索
    if (idx == self.chars.count) {
        // 得到了一个正确的解
        [self.list addObject:self.string];
        return;
    }

    // 先枚举这一层可以做的所有选择
//    NSArray *letters = self.lettersArray[self.chars[idx] - '2'];
//    for (char letter : letters) {
//        string[idx] = letter;
//        dfs(idx + 1);
//    }
}

@end
