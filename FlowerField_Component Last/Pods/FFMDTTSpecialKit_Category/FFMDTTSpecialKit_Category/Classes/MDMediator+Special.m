//
//  MDMediator+Special.m
//  FFMDTTSpecialKit_Category_Example
//
//  Created by Hank on 2022/6/28.
//  Copyright © 2022 er2010hacker@163.com. All rights reserved.
//

#import "MDMediator+Special.h"

@implementation MDMediator (Special)

- (UIViewController*)specialDetailController {
    return [self performTarget:@"Special" action:@"specialDetailViewController" params:nil shouldCacheTarget:NO];
}

- (NSDictionary*)specialReformerWithOriginData:(NSDictionary*)data {
    return [self performTarget:@"Special" action:@"specialReformerWithOriginData" params:data shouldCacheTarget:NO];
}

- (NSDictionary *)specialReformer {
    return [self performTarget:@"Special" action:@"specialReformer" params:nil shouldCacheTarget:NO];
}

- (APIRequest*)specialAPIRequest {
    return [self performTarget:@"Special" action:@"specialAPIRequest" params:nil shouldCacheTarget:NO];
}

@end
