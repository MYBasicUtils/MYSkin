//
//  MYSkinThemeModel.h
//  MYSkin
//
//  Created by APPLE on 2022/11/2.
//  主题颜色解析的model

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MYSkinFontModel : NSObject

@property (nonatomic, assign) <#type#> <#name#>;/**<  <#something#> */

@end

@interface MYSkinThemeModel : NSObject

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

@property (nonatomic, strong, readonly) UIFont *themeFont;/**<  当前字体 */

@property (nonatomic, assign, readonly) cgf <#name#>;/**<  <#something#> */



@end

NS_ASSUME_NONNULL_END
