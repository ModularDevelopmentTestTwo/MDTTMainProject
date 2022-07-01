//
//  Target_Author.m
//  FFMDTTAuthorKit_Example
//
//  Created by Hank on 2022/6/24.
//  Copyright © 2022 er2010hacker@163.com. All rights reserved.
//

#import "Target_Author.h"

#import "FFAuthorDetailController.h"
#import "FFAuthorListReformer.h"
#import "AuthorAPIRequest.h"

@implementation Target_Author

- (UIViewController*)Action_authorDetailViewController:(NSDictionary*)params {
    return [[FFAuthorDetailController alloc] init];
}

- (NSDictionary*)Action_authorReformerWithOriginData:(NSDictionary*)params {
    FFAuthorListReformer *reformer = [[FFAuthorListReformer alloc]init];
    return params ? [reformer reformData:params] : nil;
    
}

- (NSDictionary *)Action_authorReformer:(NSDictionary*)params {
    return [[FFAuthorListReformer alloc] init];
}

- (APIRequest*)Action_authorAPIRequest:(NSDictionary*)params {
    return [[AuthorAPIRequest alloc] init];
}

@end
