//
//  LayoutView.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/3.
//

#import "LayoutView.h"
#import "LayoutView+Load.h"

@implementation LayoutView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setStr:@"111"];
        [self addObserver:self forKeyPath:@"str" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    }
    return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([keyPath isEqualToString: @"str"]) {
        NSLog(@"%@", change);
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self setNeedsLayout];
//    [self layoutIfNeeded];
//    [self setNeedsDisplay];
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    dispatch_async(queue, ^{
        [self setStr:@"222"];
        NSLog(@"%@", [self str]);
    });
    dispatch_async(queue, ^{
        [self setStr:@"333"];
        NSLog(@"%@", [self str]);
    });
    dispatch_async(queue, ^{
        [self setStr:@"444"];
        NSLog(@"%@", [self str]);
    });
    dispatch_async(queue, ^{
        [self setStr:@"555"];
        NSLog(@"%@", [self str]);
    });
//    self.backgroundColor = [UIColor yellowColor];
}

-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent*)event
{
    CGRect bounds = self.bounds;
    //扩大原热区直径至26，可以暴露个接口，用来设置需要扩大的半径。
    CGFloat widthDelta = 50;
    CGFloat heightDelta = 50;
    bounds = CGRectInset(bounds, -0.5 * widthDelta, -0.5 * heightDelta);
    return CGRectContainsPoint(bounds, point);
}

//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
//    CGRect rectBig = CGRectInset(self.bounds, -(27.0/2), -(27.0/2));
//
//    if (CGRectContainsPoint(rectBig, point)) {
//        return self;
//    }else{
//        return nil;
//    }
//
//    return self;
//}

- (void)drawRect:(CGRect)rect{
    NSLog(@"%s --- %@", __func__, NSStringFromCGRect(rect));
    
    CGContextRef context = UIGraphicsGetCurrentContext();

    CGContextSetLineWidth(context, 2);

    CGContextMoveToPoint(context, 50, 25);
    CGContextAddLineToPoint(context, 62.5, 62.5);
    CGContextAddLineToPoint(context, 25, 50);
    CGContextAddLineToPoint(context, 75, 50);
    CGContextAddLineToPoint(context, 37.5, 62.5);
    CGContextAddLineToPoint(context, 50, 25);

    CGContextSetStrokeColorWithColor(context, [UIColor blackColor].CGColor);

    CGContextStrokePath(context);
}

- (void)layoutSubviews {
    NSLog(@"%s", __func__);
    
//    self.layer.contents = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"test"]];
}

//- (void)displayLayer:(CALayer *)layer{
//    dispatch_queue_t backgroundQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0);
//    dispatch_async(backgroundQueue, ^{
//            CGContextRef ctx = CGBitmapContextCreate(<#void * _Nullable data#>, <#size_t width#>, <#size_t height#>, <#size_t bitsPerComponent#>, <#size_t bytesPerRow#>, <#CGColorSpaceRef  _Nullable space#>, <#uint32_t bitmapInfo#>);
//            // draw in context...
//            CGImageRef img = CGBitmapContextCreateImage(ctx);
//            CFRelease(ctx);
//            dispatch_async(mainQueue, ^{
//                layer.contents = img;
//            });
//        });
//}

@end
