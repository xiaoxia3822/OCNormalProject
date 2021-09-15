//
//  ContentCell.m
//  OCNormalProject
//
//  Created by 夏帅 on 2021/9/13.
//

#import "ContentCell.h"

@interface ContentCell ()

@property(nonatomic, strong) CATextLayer *textLayer;

@end

@implementation ContentCell

+ (NSString *)cellIdentifier {
    return @"ContentCell";
}

+ (instancetype)cellWithCollectionView:(UICollectionView *)collectionView forIndexPath:(NSIndexPath *)indexPath {
    ContentCell *cell = (ContentCell*)[collectionView dequeueReusableCellWithReuseIdentifier:[ContentCell cellIdentifier] forIndexPath:indexPath];
    return cell;
}

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        self.contentView.backgroundColor = UIColorFromRGB(0x1C7887);
        [self textLayerUI];
        
        self.layer.cornerRadius = 10;
        self.contentView.layer.cornerRadius = 10;
    }
    return self;
}

-(void)textLayerUI {
    self.textLayer = [CATextLayer layer];
    self.textLayer.frame = CGRectMake(0, (self.contentView.bounds.size.height-20)/2, self.contentView.bounds.size.width, 20);
    [self.contentView.layer addSublayer:self.textLayer];

    self.textLayer.foregroundColor = UIColorFromRGB(0xE3E6C3).CGColor;
    self.textLayer.alignmentMode = kCAAlignmentCenter;
    self.textLayer.wrapped = YES;

    //choose a font
    UIFont *font = [UIFont systemFontOfSize:15];

    //set layer font
    CFStringRef fontName = (__bridge CFStringRef)font.fontName;
    CGFontRef fontRef = CGFontCreateWithFontName(fontName);
    self.textLayer.font = fontRef;
    self.textLayer.fontSize = font.pointSize;
    CGFontRelease(fontRef);
}

- (void)reloadCell:(ContentModel *)model {
    self.textLayer.string = model.title;
}

@end
