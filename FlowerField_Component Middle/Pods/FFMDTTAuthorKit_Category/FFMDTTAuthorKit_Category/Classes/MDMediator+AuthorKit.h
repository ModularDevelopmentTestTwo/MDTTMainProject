//
//  MDMediator+AuthorKit.h
//  FFMDTTAuthorKit_Category_Example
//
//  Created by Hank on 2022/6/28.
//  Copyright © 2022 er2010hacker@163.com. All rights reserved.
//

#import <MDMediator/MDMediator.h>

#import <FFMDTTAPIsKit/APIRequest.h>

NS_ASSUME_NONNULL_BEGIN

@interface MDMediator (AuthorKit)

- (UIViewController*)authorDetailViewController;

- (NSDictionary*)authorReformerWithOriginData:(NSDictionary*)data;

- (NSDictionary *)authorReformer;

- (APIRequest*)authorAPIRequest;

@end

NS_ASSUME_NONNULL_END
