//
//  MYSkinThemeModel.m
//  MYSkin
//
//  Created by APPLE on 2022/11/2.
//

#import "MYSkinThemeModel.h"

@interface MYSkinFontModel ()

@property (nonatomic, strong) NSString *size;
@property (nonatomic, strong) NSString *height;
@property (nonatomic, strong) NSString *paragraph;
@property (nonatomic, assign) MYSkinFontModelWeight weight;

@end

@implementation MYSkinFontModel


@end

@interface MYSkinThemeConfig ()

#pragma mark - 有色颜色配置

@property (nonatomic, strong) UIColor *TC1;/**< 主题色  */
@property (nonatomic, strong) UIColor *TC2;/**< 强调颜色  */
@property (nonatomic, strong) UIColor *TC3;/**< 成功、推荐、开关颜色  */
@property (nonatomic, strong) UIColor *TC4;/**< 引导、连接颜色  */
@property (nonatomic, strong) UIColor *TC5;/**< 弱警告、提示信息颜色  */

@property (nonatomic, strong) NSString *aTC1;/**< 主题色  */
@property (nonatomic, strong) NSString *aTC2;/**< 强调颜色  */
@property (nonatomic, strong) NSString *aTC3;/**< 成功、推荐、开关颜色  */
@property (nonatomic, strong) NSString *aTC4;/**< 引导、连接颜色  */
@property (nonatomic, strong) NSString *aTC5;/**< 弱警告、提示信息颜色  */

#pragma mark - 背景颜色配置

@property (nonatomic, strong) UIColor *BG1;/**< 背景色  */
@property (nonatomic, strong) UIColor *BG2;/**< 背景色，导航栏背景  */
@property (nonatomic, strong) UIColor *BG3;/**< 背景色，卡片背景 */
@property (nonatomic, strong) UIColor *BG4;/**< 背景色，弹窗背景  */
@property (nonatomic, strong) UIColor *BG5;/**< 背景色，底部导航背景  */
@property (nonatomic, strong) UIColor *BG6;/**< 背景色，列表背景  */

@property (nonatomic, strong) UIColor *aBG1;/**< 背景色  */
@property (nonatomic, strong) UIColor *aBG2;/**< 背景色，导航栏背景  */
@property (nonatomic, strong) UIColor *aBG3;/**< 背景色，卡片背景 */
@property (nonatomic, strong) UIColor *aBG4;/**< 背景色，弹窗背景  */
@property (nonatomic, strong) UIColor *aBG5;/**< 背景色，底部导航背景  */
@property (nonatomic, strong) UIColor *aBG6;/**< 背景色，列表背景  */

#pragma mark - 透明度，大小依次减小

@property (nonatomic, assign) CGFloat A1;/**<  透明度 */
@property (nonatomic, assign) CGFloat A2;/**<  透明度 */
@property (nonatomic, assign) CGFloat A3;/**<  透明度 */
@property (nonatomic, assign) CGFloat A4;/**<  透明度 */
@property (nonatomic, assign) CGFloat A5;/**<  透明度 */
@property (nonatomic, assign) CGFloat A6;/**<  透明度 */
@property (nonatomic, assign) CGFloat A7;/**<  透明度 */
@property (nonatomic, assign) CGFloat A8;/**<  透明度 */
@property (nonatomic, assign) CGFloat A9;/**<  透明度 */

#pragma mark - 圆角

@property (nonatomic, assign) CGFloat CA1;/**<  圆角，宽度充满屏幕的 弹窗圆角 */
@property (nonatomic, assign) CGFloat CA2;/**<  圆角，宽度充满半个屏幕的 弹窗圆角 */
@property (nonatomic, assign) CGFloat CA3;/**<  圆角，宽度较小的 弹窗圆角 */

@property (nonatomic, assign) CGFloat CB1;/**<  圆角，大按钮的圆角 */
@property (nonatomic, assign) CGFloat CB2;/**<  圆角，次级按钮的圆角 */
@property (nonatomic, assign) CGFloat CB3;/**<  圆角，小按钮的圆角 */

@property (nonatomic, assign) CGFloat CC1;/**<  圆角，大型卡片圆角 */
@property (nonatomic, assign) CGFloat CC2;/**<  圆角，卡片圆角 */
@property (nonatomic, assign) CGFloat CC3;/**<  圆角，小卡片圆角 */
@property (nonatomic, assign) CGFloat CC4;/**<  圆角，超小卡片圆角 */

#pragma mark - 字体

@property (nonatomic, strong) UIFont *themeFont;/**<  当前字体，json中为字体名称。若json中为空或者没有该字段，则使用苹果默认字体 */
@property (nonatomic, strong) NSString *athemeFont;/**<  当前字体，json中为字体名称。若json中为空或者没有该字段，则使用苹果默认字体 */

@property (nonatomic, assign) MYSkinFontModel *f1;/**<  字体，超大，重要数据 */
@property (nonatomic, assign) MYSkinFontModel *f2;/**<  字体，超大，常规数据 */
@property (nonatomic, assign) MYSkinFontModel *f3;/**<  字体，导航栏标题，一级标题 */
@property (nonatomic, assign) MYSkinFontModel *f4;/**<  字体，重要信息模块标题，大按钮文字 */
@property (nonatomic, assign) MYSkinFontModel *f5;/**<  字体，列表标题，主要正文内容 */
@property (nonatomic, assign) MYSkinFontModel *f6;/**<  字体，次要信息，若层级信息，次级正文内容 */
@property (nonatomic, assign) MYSkinFontModel *f7;/**<  字体，弱提示，标签、角标文字 */
@property (nonatomic, assign) MYSkinFontModel *f8;/**<  字体，次弱提示，标签、角标文字 */

@end

@implementation MYSkinThemeConfig

+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper {
    return @{
        @"aTC1":@"TC1",
        @"aTC2":@"TC2",
        @"aTC3":@"TC3",
        @"aTC4":@"TC4",
        @"aTC5":@"TC5",
        @"aTC6":@"TC6",
        
        @"aBG1":@"BG1",
        @"aBG2":@"BG2",
        @"aBG3":@"BG3",
        @"aBG4":@"BG4",
        @"aBG5":@"BG5",
        @"aBG6":@"BG6",
        
        @"athemeFont" : @"themeFont"
    };
      
}

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass {
    return @{
        @"f1": [MYSkinFontModel class],
        @"f2": [MYSkinFontModel class],
        @"f3": [MYSkinFontModel class],
        @"f4": [MYSkinFontModel class],
        @"f5": [MYSkinFontModel class],
        @"f6": [MYSkinFontModel class],
        @"f7": [MYSkinFontModel class],
        @"f8": [MYSkinFontModel class],
    };
    
}
@end

@interface MYSkinThemeModel ()

@end

@implementation MYSkinThemeModel

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass {
    return @{
        @"config" : [MYSkinThemeConfig class]
    };
}

@end
