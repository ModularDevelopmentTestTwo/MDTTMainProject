//
//  Target_Author.h
//  FFMDTTAuthorKit_Example
//
//  Created by Hank on 2022/6/24.
//  Copyright © 2022 er2010hacker@163.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FFMDTTAuthorKit.h"

NS_ASSUME_NONNULL_BEGIN

@interface Target_Author : NSObject

- (UIViewController*)Action_authorDetailViewController:(NSDictionary*)params;

- (NSDictionary*)Action_authorReformerWithOriginData:(NSDictionary*)params;

- (NSDictionary *)Action_authorReformer:(NSDictionary*)params;

- (APIRequest*)Action_authorAPIRequest:(NSDictionary*)params;

@end

NS_ASSUME_NONNULL_END
