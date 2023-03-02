//
//  UIView+MYSkin.m
//  MYSkin
//
//  Created by APPLE on 2022/11/4.
//

#import "UIView+MYSkin.h"
#import "MYSkin.h"

@interface UIView ()

@property (nonatomic, assign) BOOL hasAddNotification;

@end

@implementation UIView (MYSkin)

- (void)addColorThemeChange:(void(^)(void))colorThemeChangeBlock {
    if (!self.hasAddNotification) {
        [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(_onReceiveColorThemeChange) name:kMYSkinColorThemeChange object:nil];
    }
    //TODO: wmy 将其添加到blockarray中
}

- (void)_onReceiveColorThemeChange {
    
}

@end
