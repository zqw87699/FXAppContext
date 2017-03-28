//
//  FXAppContext.h
//  TTTT
//
//  Created by 张大宗 on 2017/3/28.
//  Copyright © 2017年 张大宗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FXCommon.h"
#import "IFXLaunchProtocol.h"

@interface FXAppContext : NSObject

AS_SINGLETON(FXAppContext)

- (void)registerApp:(NSArray<IFXLaunchProtocol>*)launchContexts Options:(NSDictionary*)options;

@end
