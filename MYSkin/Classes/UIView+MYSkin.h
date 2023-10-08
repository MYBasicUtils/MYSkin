//
//  UIView+MYSkin.h
//  MYSkin
//
//  Created by APPLE on 2022/11/4.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (MYSkin)

/// 添加主题更换时的block
/// @param colorThemeChangeBlock block，通常block中的action为uiview中的颜色替换
- (void)addColorThemeChange:(void(^)(void))colorThemeChangeBlock;

@end

NS_ASSUME_NONNULL_END
