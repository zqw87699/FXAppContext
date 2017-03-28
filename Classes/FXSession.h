//
//  FXSession.h
//  TTTT
//
//  Created by 张大宗 on 2017/3/27.
//  Copyright © 2017年 张大宗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FXCommon.h"

/**
 *  用户登录通知
 */
extern NSString * const FXUserLoginedNotification;

/**
 *  用户注销通知
 */
extern NSString * const FXUserLogoutNotification;

/**
 *  网络环境变化
 */
extern NSString * const FXNetworkChangedNotification;

@interface FXSession : NSObject

AS_SINGLETON(FXSession);

/*
 *  登入
 */
-(void) logined;

/*
 *  登出
 */
-(void) logout;

@end
