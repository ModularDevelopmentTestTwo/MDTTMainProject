//
//  Target_Special.m
//  FFMDTTAuthorKit_Category_Example
//
//  Created by Hank on 2022/6/24.
//  Copyright © 2022 er2010hacker@163.com. All rights reserved.
//

#import "Target_Special.h"
#import "FFSpecialDetailController.h"
#import "FFSpecialListReformer.h"
#import "SpecialAPIRequest.h"

@implementation Target_Special

- (UIViewController*)Action_specialDetailViewController:(NSDictionary*)params {
    return [[FFSpecialDetailController alloc] init];
}

- (NSDictionary*)Action_specialReformerWithOriginData:(NSDictionary*)params {
    FFSpecialListReformer *reformer = [[FFSpecialListReformer alloc] init];
    return params ? [reformer reformData:params] : nil;
}

- (NSDictionary *)Action_specialReformer:(NSDictionary*)params {
    return [[FFSpecialListReformer alloc] init];
}

- (APIRequest*)Action_specialAPIRequest:(NSDictionary*)params {
    return [[SpecialAPIRequest alloc] init];
}

@end
