//
//  FXNetworkContext.m
//  TTTT
//
//  Created by 张大宗 on 2017/3/28.
//  Copyright © 2017年 张大宗. All rights reserved.
//

#import "FXNetworkContext.h"

@implementation FXNetworkContext

DEF_SINGLETON_INIT(FXNetworkContext)

-(BOOL)isConnection {
    return [self currentStatus] != NotReachable;
}

-(NetworkStatus) currentStatus {
    return [[Reachability reachabilityForInternetConnection] currentReachabilityStatus];
}

-(void)singleInit{
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    [reachability startNotifier];
}

@end
