//
//  MYSkinThemeModel.h
//  MYSkin
//
//  Created by APPLE on 2022/11/2.
//  主题颜色解析的model

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    MYSkinFontModelWeightNormal = 0,
    MYSkinFontModelWeightSemibold = 1,
    MYSkinFontModelWeightBold = 2,
} MYSkinFontModelWeight;

@interface MYSkinFontModel : NSObject

@property (nonatomic, strong, readonly) NSString *size;
@property (nonatomic, strong, readonly) NSString *height;
@property (nonatomic, strong, readonly) NSString *paragraph;
@property (nonatomic, assign, readonly) MYSkinFontModelWeight weight;

@end

@interface MYSkinThemeConfig : NSObject

#pragma mark - 有色颜色配置

@property (nonatomic, strong, readonly) UIColor *TC1;/**< 主题色  */
@property (nonatomic, strong, readonly) UIColor *TC2;/**< 强调颜色  */
@property (nonatomic, strong, readonly) UIColor *TC3;/**< 成功、推荐、开关颜色  */
@property (nonatomic, strong, readonly) UIColor *TC4;/**< 引导、连接颜色  */
@property (nonatomic, strong, readonly) UIColor *TC5;/**< 弱警告、提示信息颜色  */

#pragma mark - 背景颜色配置

@property (nonatomic, strong, readonly) UIColor *BG1;/**< 背景色  */
@property (nonatomic, strong, readonly) UIColor *BG2;/**< 背景色，导航栏背景  */
@property (nonatomic, strong, readonly) UIColor *BG3;/**< 背景色，卡片背景 */
@property (nonatomic, strong, readonly) UIColor *BG4;/**< 背景色，弹窗背景  */
@property (nonatomic, strong, readonly) UIColor *BG5;/**< 背景色，底部导航背景  */
@property (nonatomic, strong, readonly) UIColor *BG6;/**< 背景色，列表背景  */

#pragma mark - 透明度，大小依次减小

@property (nonatomic, assign, readonly) CGFloat A1;/**<  透明度 */
@property (nonatomic, assign, readonly) CGFloat A2;/**<  透明度 */
@property (nonatomic, assign, readonly) CGFloat A3;/**<  透明度 */
@property (nonatomic, assign, readonly) CGFloat A4;/**<  透明度 */
@property (nonatomic, assign, readonly) CGFloat A5;/**<  透明度 */
@property (nonatomic, assign, readonly) CGFloat A6;/**<  透明度 */
@property (nonatomic, assign, readonly) CGFloat A7;/**<  透明度 */
@property (nonatomic, assign, readonly) CGFloat A8;/**<  透明度 */
@property (nonatomic, assign, readonly) CGFloat A9;/**<  透明度 */

#pragma mark - 圆角

@property (nonatomic, assign, readonly) CGFloat CA1;/**<  圆角，宽度充满屏幕的 弹窗圆角 */
@property (nonatomic, assign, readonly) CGFloat CA2;/**<  圆角，宽度充满半个屏幕的 弹窗圆角 */
@property (nonatomic, assign, readonly) CGFloat CA3;/**<  圆角，宽度较小的 弹窗圆角 */

@property (nonatomic, assign, readonly) CGFloat CB1;/**<  圆角，大按钮的圆角 */
@property (nonatomic, assign, readonly) CGFloat CB2;/**<  圆角，次级按钮的圆角 */
@property (nonatomic, assign, readonly) CGFloat CB3;/**<  圆角，小按钮的圆角 */

@property (nonatomic, assign, readonly) CGFloat CC1;/**<  圆角，大型卡片圆角 */
@property (nonatomic, assign, readonly) CGFloat CC2;/**<  圆角，卡片圆角 */
@property (nonatomic, assign, readonly) CGFloat CC3;/**<  圆角，小卡片圆角 */
@property (nonatomic, assign, readonly) CGFloat CC4;/**<  圆角，超小卡片圆角 */

#pragma mark - 字体

@property (nonatomic, strong, readonly) UIFont *themeFont;/**<  当前字体，json中为字体名称。若json中为空或者没有该字段，则使用苹果默认字体 */

@property (nonatomic, assign, readonly) MYSkinFontModel *f1;/**<  字体，超大，重要数据 */
@property (nonatomic, assign, readonly) MYSkinFontModel *f2;/**<  字体，超大，常规数据 */
@property (nonatomic, assign, readonly) MYSkinFontModel *f3;/**<  字体，导航栏标题，一级标题 */
@property (nonatomic, assign, readonly) MYSkinFontModel *f4;/**<  字体，重要信息模块标题，大按钮文字 */
@property (nonatomic, assign, readonly) MYSkinFontModel *f5;/**<  字体，列表标题，主要正文内容 */
@property (nonatomic, assign, readonly) MYSkinFontModel *f6;/**<  字体，次要信息，若层级信息，次级正文内容 */
@property (nonatomic, assign, readonly) MYSkinFontModel *f7;/**<  字体，弱提示，标签、角标文字 */
@property (nonatomic, assign, readonly) MYSkinFontModel *f8;/**<  字体，次弱提示，标签、角标文字 */


@end

@interface MYSkinThemeModel : NSObject

@property (nonatomic, strong) NSString *name;/**<  主题名称 */
@property (nonatomic, strong) NSString *themeStyle;/**<  主题样式 */
@property (nonatomic, strong) MYSkinThemeConfig *config;/**<  主题配置 */

@end

NS_ASSUME_NONNULL_END
