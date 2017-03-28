//
//  FXAppContext.m
//  TTTT
//
//  Created by 张大宗 on 2017/3/28.
//  Copyright © 2017年 张大宗. All rights reserved.
//

#import "FXAppContext.h"
#import "FXSession.h"
#import "FXLogMacros.h"

@implementation FXAppContext

DEF_SINGLETON_INIT(FXAppContext)

- (void)singleInit{
    [FXSession sharedInstance];
}

- (void)registerApp:(NSArray<IFXLaunchProtocol> *)launchContexts Options:(NSDictionary *)options{
    for(id<IFXLaunchProtocol> context in launchContexts){
        if (![context conformsToProtocol:@protocol(IFXLaunchProtocol)]) {
            FXLogDebug(@"%@未遵守IFXLaunchProtocol协议",NSStringFromClass([context class]));
        }else{
            [context appDidLaunchWithOptions:options];
            if ([context respondsToSelector:@selector(childs)] && [[context childs] count] > 0) {
                [self registerApp:[context childs] Options:options];
            }
        }
    }
}

@end
