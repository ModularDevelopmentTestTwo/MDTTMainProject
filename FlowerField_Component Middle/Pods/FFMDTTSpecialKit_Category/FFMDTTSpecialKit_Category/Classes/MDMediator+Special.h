//
//  MDMediator+Special.h
//  FFMDTTSpecialKit_Category_Example
//
//  Created by Hank on 2022/6/28.
//  Copyright © 2022 er2010hacker@163.com. All rights reserved.
//

#import <MDMediator/MDMediator.h>

#import <FFMDTTAPIsKit/APIRequest.h>

#import <FFMDTTAPIsKit/FFReformProtocol.h>

NS_ASSUME_NONNULL_BEGIN

@interface MDMediator (Special)

- (UIViewController*)specialDetailController;

- (NSDictionary*)specialReformerWithOriginData:(NSDictionary*) data;

- (NSDictionary *)specialReformer;

- (APIRequest*)specialAPIRequest;

@end

NS_ASSUME_NONNULL_END
