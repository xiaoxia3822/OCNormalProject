//
//  StackList.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/8/22.
//

#import "StackList.h"

@interface StackList()

@property(nonatomic, strong) NSMutableArray *elements;

@end

@implementation StackList

- (instancetype)initWithCapacity:(NSInteger)capacity
{
    self = [super init];
    if (self) {
        self.elements = [NSMutableArray arrayWithCapacity:capacity];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _elements = [NSMutableArray array];
    }
    return self;
}

-(NSInteger)size{
    return _elements.count;
}

-(void)push:(NSInteger)value{
    [_elements addObject:@(value)];
}

-(NSInteger)pop{
    NSInteger back = [_elements.lastObject integerValue];
    [_elements removeLastObject];
    return back;
}

-(NSInteger)top{
    return [_elements.lastObject integerValue];
}

-(void)clear{
    [_elements removeAllObjects];
}

-(BOOL)isEmpty {
    return _elements.count == 0;
}

- (NSString *)description
{
    NSMutableString *string = [NSMutableString stringWithFormat:@"size = %ld, [", (long)self.size];
    
    for (int i = 0; i < self.size; i++) {
        if (i != 0) {
            [string appendString:@", "];
        }
        [string appendString:[NSString stringWithFormat:@"%@", _elements[i]]];
    }
    [string appendString:@"]"];
    return [NSString stringWithFormat:@"%@", string];
}

@end
