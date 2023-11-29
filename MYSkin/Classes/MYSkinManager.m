//
//  MYSkinManager.m
//  MYBookkeeping
//
//  Created by APPLE on 2022/1/28.
//

#import "MYSkinManager.h"
#import "MYUIKit.h"

@interface MYSkinManager ()

@end

@implementation MYSkinManager

+ (instancetype)sharedInstance {
    static id instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[[self class] alloc] init];
    });
    return instance;
}


- (instancetype)init {
    if ([super init]) {
        //TODO: wmy 1. 读取plist文件，将其添加到其中
    }
    return self;
}

- (void)refresh {
    //TODO: wmy
}

#pragma mark - test
//TODO: wmy 这里之后会删掉

- (CGFloat)space {
    return 16;
}

- (CGFloat)halfSpace {
    return 8;
}


- (CGFloat)thirdSpace {
    return 4;
}

- (CGFloat)cornerRadius {
    return 16;
}

- (CGFloat)cardCornerRadius {
    return 8;
}

- (CGFloat)lineSpace {
    return 1;
}

- (UIColor *)themeColor {
    return UIColor.orangeColor;
}

- (UIColor *)shadowColor {
    return MY_HexAlphaColor(0x000000, 0.2);
}

- (UIColor *)titleColor {
    return MY_HexColor(0x000000);
}

- (UIColor *)titleColorDark {
    return MY_HexColor(0xFFFFFF);
}

- (UIColor *)descColor {
    return MY_HexAlphaColor(0x000000, 0.6);
}

- (UIColor *)descColorDark {
    return MY_HexAlphaColor(0xFFFFFF, 0.8);
}

- (UIColor *)greenColor {
    return UIColor.greenColor;
}

- (UIColor *)warnColor {
    return UIColor.redColor;
}

- (UIColor *)linkColor {
    return UIColor.linkColor;
}

- (UIColor *)lineColor {
    return UIColor.grayColor;
}

- (UIColor *)backColor {
    return MY_HexColor(0xEFEFEF);
}

- (UIFont *)bigTitleFont {
    return [UIFont systemFontOfSize:20 weight:UIFontWeightSemibold];
}

- (UIFont *)titleFont {
    return [UIFont systemFontOfSize:18 weight:UIFontWeightSemibold];
}

- (UIFont *)smallTitleFont {
    return [UIFont systemFontOfSize:16 weight:UIFontWeightSemibold];
}

- (UIFont *)subTitleFont {
    return [UIFont systemFontOfSize:16];
}

- (UIFont *)descBigTitleFont {
    return [UIFont systemFontOfSize:14 weight:UIFontWeightSemibold];
}

- (UIFont *)descTitleFont {
    return [UIFont systemFontOfSize:12 weight:UIFontWeightSemibold];
}

- (UIFont *)guideTitleFont {
    return [UIFont systemFontOfSize:10 weight:UIFontWeightSemibold];
}

- (UIColor *)whiteColor {
    return UIColor.whiteColor;
}

- (UIColor *)blackColor {
    return UIColor.blackColor;
}

@end
