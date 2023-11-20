//
//  MYSkin.h
//  MYSkin
//
//  Created by APPLE on 2022/11/2.
//

#import <Foundation/Foundation.h>
#import "MYSkinDecodeEngineProtocol.h"


FOUNDATION_EXPORT NSString * _Nonnull const kMYSkinColorThemeChange;

NS_ASSUME_NONNULL_BEGIN

@interface MYSkin : NSObject

@property (nonatomic, strong, readonly) MYSkinThemeModel *currentThemeModel;/**<  当前的主题 */
@property (nonatomic, strong, readonly) MYSkinThemeModel *darkThemeModel;/**<  暗黑主题 */
@property (nonatomic, assign) BOOL isDarkTheme;/**<  现在是否是暗黑主题 */

+ (instancetype)sharedInstance;

/// 注册文件解析器
/// 该控件会内置一个解析器，解析规则为默认的json 转model的规则
/// 若没有调用该方法配置外部解析器，则使用默认解析器进行解析
/// @param decodeEngine 外部解析器
- (void)registDecodeEngine:(id<MYSkinDecodeEngineProtocol>)decodeEngine;

/// 将文件解析为主题对象
/// 该方法会使用解析器进行约定规则的解析
- (MYSkinThemeModel *)loadSkinWithFileName:(NSString *)fileName;

/// 配置当前主题，配置成功后将发送皮肤变化通知，每个为UIView的子类的控件都将获取到该通知
- (void)configCurrentThemeModel:(MYSkinThemeModel *)themeModel;

/// 配置暗黑主题
- (void)configDarkThemeModel:(MYSkinThemeModel *)themeModel;

@end

//TODO: wmy 主题色配置
#define kBlackColor [UIColor blackColor]
#define kThemeColor [UIColor blueColor]
#define kWhiteColor [UIColor whiteColor]
#define kLightBackgroundColor [UIColor whiteColor]

#define kMargin 16
#define kSpace 4

#define kIconWidth 48

NS_ASSUME_NONNULL_END
