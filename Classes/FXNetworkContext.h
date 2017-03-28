//
//  FXNetworkContext.h
//  TTTT
//
//  Created by 张大宗 on 2017/3/28.
//  Copyright © 2017年 张大宗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Reachability.h"
#import "FXCommon.h"

@interface FXNetworkContext : NSObject

AS_SINGLETON(FXNetworkContext)

/*
 *  是否联网
 */
-(BOOL)isConnection;

/*
 *  联网链接状态  0 未联网,1 WWan,2 Wifi
 */
-(NetworkStatus) currentStatus;

@end
