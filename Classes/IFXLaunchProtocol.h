//
//  IFXLaunchProtocol.h
//  TTTT
//
//  Created by 张大宗 on 2017/3/28.
//  Copyright © 2017年 张大宗. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IFXLaunchProtocol <NSObject>

@optional

- (NSArray<IFXLaunchProtocol>*)childs;

@required

- (void)appDidLaunchWithOptions:(NSDictionary *)options;

@end
