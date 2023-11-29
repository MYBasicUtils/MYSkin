//
//  MYSkinManager.h
//  MYBookkeeping
//
//  Created by APPLE on 2022/1/28.
//

#import <UIKit/UIKit.h>

#define TheSkin MYSkinManager.sharedInstance

// 空间
#define MYSkinSpace TheSkin.space
#define MYSkinHalfSpace TheSkin.halfSpace

// 圆角
#define MYSkinRadius TheSkin.cornerRadius

// 颜色
#define MYSkinShadowColor TheSkin.shadowColor



NS_ASSUME_NONNULL_BEGIN

@interface MYSkinManager : NSObject

#pragma mark - 间隙

@property (nonatomic, assign, readonly) CGFloat space;/**< 大间隙  */
@property (nonatomic, assign, readonly) CGFloat halfSpace;/**< 小间隙  */
@property (nonatomic, assign, readonly) CGFloat thirdSpace;/**< 三级间隙  */

@property (nonatomic, assign, readonly) CGFloat lineSpace;/**< 线宽度  */

#pragma mark - 圆角

@property (nonatomic, assign, readonly) CGFloat cornerRadius;/**< 圆角  */
@property (nonatomic, assign, readonly) CGFloat cardCornerRadius;/**< 圆角  */

#pragma mark - 颜色

@property (nonatomic, strong) UIColor *themeColor;

@property (nonatomic, assign, readonly) UIColor *shadowColor;/**<  蒙版颜色 */
@property (nonatomic, assign, readonly) UIColor *titleColor;/**<  标题颜色 */
@property (nonatomic, assign, readonly) UIColor *titleColorDark;/**<  标题颜色 */
@property (nonatomic, assign, readonly) UIColor *descColor;/**<  内容颜色 */
@property (nonatomic, assign, readonly) UIColor *descColorDark;/**<  内容颜色 */
@property (nonatomic, assign, readonly) UIColor *whiteColor;/**<  白颜色 */
@property (nonatomic, assign, readonly) UIColor *blackColor;/**<  黑颜色 */
@property (nonatomic, assign, readonly) UIColor *greenColor;/**< 绿颜色 */
@property (nonatomic, assign, readonly) UIColor *warnColor;/**<  警告颜色 */
@property (nonatomic, assign, readonly) UIColor *linkColor;/**<  链接颜色 */
@property (nonatomic, assign, readonly) UIColor *lineColor;/**<  线颜色 */
@property (nonatomic, assign, readonly) UIColor *backColor;/**<  背景颜色 */

#pragma mark - 字体

@property (nonatomic, assign, readonly) UIFont *bigTitleFont;/**<  大标题文字 */
@property (nonatomic, assign, readonly) UIFont *titleFont;/**<  标题文字 */
@property (nonatomic, assign, readonly) UIFont *smallTitleFont;/**<  小标题文字 */
@property (nonatomic, assign, readonly) UIFont *subTitleFont;/**<  副标题文字 */
@property (nonatomic, assign, readonly) UIFont *descBigTitleFont;/**<  内容文字1 */
@property (nonatomic, assign, readonly) UIFont *descTitleFont;/**<  内容文字2 */
@property (nonatomic, assign, readonly) UIFont *guideTitleFont;/**<  向导文字 */

+ (instancetype)sharedInstance;

- (void)refresh;

@end

NS_ASSUME_NONNULL_END
