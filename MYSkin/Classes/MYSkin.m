//
//  MYSkin.m
//  MYSkin
//
//  Created by APPLE on 2022/11/2.
//

#import "MYSkin.h"
#import "MYSkinDecodeEngineProtocol.h"
#import "MYSkinJsonDecodeEngine.h"

NSString *const kMYSkinColorThemeChange = @"kMYSkinColorThemeChange";

@interface MYSkin ()

@property (nonatomic, strong) MYSkinThemeModel *currentThemeModel;/**<  当前的主题 */
@property (nonatomic, strong) MYSkinThemeModel *themeModel;/**<  选中的主题 */
@property (nonatomic, strong) MYSkinThemeModel *darkThemeModel;/**<  暗黑的主题 */

@property (nonatomic, strong) MYSkinJsonDecodeEngine *defaultDecodeEngine;
@property (nonatomic, strong) id<MYSkinDecodeEngineProtocol> decodeEngine;/**<  解析器 */

@end

@implementation MYSkin

#pragma mark - dealloc

#pragma mark - life cycle

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static MYSkin * sharedInstance;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[MYSkin  alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _defaultDecodeEngine = [[MYSkinJsonDecodeEngine alloc] init];
        _decodeEngine = _defaultDecodeEngine;
    }
    return self;
}

#pragma mark - UITableViewDelegate
#pragma mark - CustomDelegate
#pragma mark - Event Response

- (MYSkinThemeModel *)loadSkinWithFileName:(NSString *)fileName {
    //TODO: 将文件中的内容读出变为map
    NSDictionary *map ;
    // 将map通过解析器解析为主题模式
    MYSkinThemeModel *themeModel = [self.decodeEngine decodeWithJson:map];
    return themeModel;
}

- (void)registDecodeEngine:(id<MYSkinDecodeEngineProtocol>)decodeEngine {
    if ([decodeEngine conformsToProtocol:@protocol(MYSkinDecodeEngineProtocol)]) {
        _decodeEngine = decodeEngine;
    }
}

- (void)configCurrentThemeModel:(MYSkinThemeModel *)themeModel {
    if (!themeModel) {
        return;
    }
    if (![themeModel isEqual:self.themeModel]) {
        _themeModel = themeModel;
        self.currentThemeModel = self.themeModel;
        // 发送通知
        [NSNotificationCenter.defaultCenter postNotificationName:kMYSkinColorThemeChange object:nil];
    }
}

- (void)configDarkThemeModel:(MYSkinThemeModel *)themeModel {
    if (!themeModel) {
        return;
    }
    if (![themeModel isEqual:self.darkThemeModel]) {
        _darkThemeModel = themeModel;
        if (self.isDarkTheme) {
            // 切换为暗黑主题
            self.currentThemeModel = self.darkThemeModel;
            // 发送通知
            [NSNotificationCenter.defaultCenter postNotificationName:kMYSkinColorThemeChange object:nil];
        }
    }
}

#pragma mark - private methods
#pragma mark - getters & setters & init members

- (void)setIsDarkTheme:(BOOL)isDarkTheme {
    _isDarkTheme = isDarkTheme;
    if (isDarkTheme) {
        self.currentThemeModel = self.darkThemeModel;
    } else {
        self.currentThemeModel = self.themeModel;
    }
}


@end
