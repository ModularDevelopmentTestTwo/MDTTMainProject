//
//  MDMediator+Tools.h
//  MDMediator_Example
//
//  Created by Hank on 2022/6/28.
//  Copyright © 2022 SMH. All rights reserved.
//

#import "MDMediator.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MDMediator (Tools)

- (UIViewController * _Nullable)topViewController;

- (void)pushViewController:(UIViewController *)viewController
                  animated:(BOOL)animated;

- (void)presentViewController:(UIViewController *)viewControllerToPresent
                     animated:(BOOL)animated
                   completion:(void (^ _Nullable )(void))completion;

@end

NS_ASSUME_NONNULL_END
