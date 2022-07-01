//
//  MDMediator+AuthorKit.m
//  FFMDTTAuthorKit_Category_Example
//
//  Created by Hank on 2022/6/28.
//  Copyright © 2022 er2010hacker@163.com. All rights reserved.
//

#import "MDMediator+AuthorKit.h"

@implementation MDMediator (AuthorKit)

- (UIViewController*)authorDetailViewController {
    return [self performTarget:@"Author" action:@"authorDetailViewController" params:nil shouldCacheTarget:NO];
}

- (NSDictionary*)authorReformerWithOriginData:(NSDictionary*)data {
    return [self performTarget:@"Author" action:@"authorReformerWithOriginData" params:data shouldCacheTarget:NO];
}

- (NSDictionary *)authorReformer {
    return[self performTarget:@"Author" action:@"authorReformer" params:nil shouldCacheTarget:NO];
}

- (APIRequest*)authorAPIRequest {
    return [self performTarget:@"Author" action:@"authorAPIRequest" params:nil shouldCacheTarget:NO];
}

@end
