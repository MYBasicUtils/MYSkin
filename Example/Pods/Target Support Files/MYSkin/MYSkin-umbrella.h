#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "MYSkin.h"
#import "MYSkinDecodeEngineProtocol.h"
#import "MYSkinJsonDecodeEngine.h"
#import "MYSkinThemeModel.h"
#import "UIView+MYSkin.h"

FOUNDATION_EXPORT double MYSkinVersionNumber;
FOUNDATION_EXPORT const unsigned char MYSkinVersionString[];

