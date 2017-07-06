//
//  FXSession.m
//  TTTT
//
//  Created by 张大宗 on 2017/3/27.
//  Copyright © 2017年 张大宗. All rights reserved.
//

#import "FXSession.h"
#import "ReactiveObjC.h"

NSString * const FXUserLoginedNotification = @"FXUserLoginedNotification";

NSString * const FXUserLogoutNotification = @"FXUserLogoutNotification";

NSString * const FXNetworkChangedNotification = @"FXNetworkChangedNotification";

@interface FXSession()

@property (nonatomic, strong) NSLock *refLock;

@end

@implementation FXSession

DEF_SINGLETON_INIT(FXSession)

- (void)singleInit{
    self.refLock = [[NSLock alloc] init];
    
    [FXNetworkContext sharedInstance];
    
    [[[NSNotificationCenter defaultCenter] rac_addObserverForName:kReachabilityChangedNotification object:nil] subscribeNext:^(NSNotification *notification) {
        [_refLock lock];
        [[NSNotificationCenter defaultCenter] postNotificationName:FXNetworkChangedNotification object:self];
        [_refLock unlock];
    }];
}

-(void) logined{
    [_refLock lock];
    [[NSNotificationCenter defaultCenter] postNotificationName:FXUserLoginedNotification object:self];
    [_refLock unlock];
}

-(void) logout {
    [_refLock lock];
    [[NSNotificationCenter defaultCenter] postNotificationName:FXUserLogoutNotification object:self];
    [_refLock unlock];
}

@end
