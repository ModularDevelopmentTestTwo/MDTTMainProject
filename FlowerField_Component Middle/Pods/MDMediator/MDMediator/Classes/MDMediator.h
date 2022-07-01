//
//  MDMediator.h
//  MDMediator_Example
//
//  Created by Hank on 2022/6/28.
//  Copyright © 2022 SMH. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

extern NSString * _Nonnull const kMDMediatorParamsKeySwiftTargetModuleName;

@interface MDMediator : NSObject

+ (instancetype _Nonnull)sharedInstance;

// 远程App调用入口
- (id _Nullable)performActionWithUrl:(NSURL * _Nullable)url
                          completion:(void(^_Nullable)(NSDictionary * _Nullable info))completion;

// 本地组件调用入口
- (id _Nullable )performTarget:(NSString * _Nullable)targetName
                        action:(NSString * _Nullable)actionName
                        params:(NSDictionary * _Nullable)params
             shouldCacheTarget:(BOOL)shouldCacheTarget;

- (void)releaseCachedTargetWithFullTargetName:(NSString * _Nullable)fullTargetName;

@end

// 简化调用单例的函数
MDMediator* _Nonnull MD(void);

NS_ASSUME_NONNULL_END
