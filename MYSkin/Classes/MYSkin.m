//
//  MYSkin.m
//  MYSkin
//
//  Created by APPLE on 2022/11/2.
//

#import "MYSkin.h"
#import "MYSkinDecodeEngineProtocol.h"
#import "MYSkinJsonDecodeEngine.h"

@interface MYSkin ()

@property (nonatomic, strong) MYSkinThemeModel *currentThemeModel;/**<  当前的主题 */
@property (nonatomic, strong) MYSkinThemeModel *darkThemeModel;/**<  暗黑主题 */

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
    if (![themeModel isEqual:self.currentThemeModel]) {
        _currentThemeModel = themeModel;
    }
}

#pragma mark - private methods
#pragma mark - getters & setters & init members



@end
