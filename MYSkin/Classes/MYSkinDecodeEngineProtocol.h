//
//  MYSkinDecodeEngineProtocol.h
//  Pods
//
//  Created by APPLE on 2022/11/2.
//

#ifndef MYSkinDecodeEngineProtocol_h
#define MYSkinDecodeEngineProtocol_h

#import "MYSkinThemeModel.h"

@protocol MYSkinDecodeEngineProtocol <NSObject>

- (MYSkinThemeModel *)decodeWithJson:(NSDictionary *)json;

@end

#endif /* MYSkinDecodeEngineProtocol_h */
