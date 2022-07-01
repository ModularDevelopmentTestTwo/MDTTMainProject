//
//  Target_Special.h
//  FFMDTTAuthorKit_Category_Example
//
//  Created by Hank on 2022/6/24.
//  Copyright © 2022 er2010hacker@163.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FFMDTTSpecialKit.h"

@interface Target_Special : NSObject

- (UIViewController*)Action_specialDetailViewController:(NSDictionary*) params;

- (NSDictionary*)Action_specialReformerWithOriginData:(NSDictionary*) params;

- (NSDictionary *)Action_specialReformer:(NSDictionary*) params;

- (APIRequest*)Action_specialAPIRequest:(NSDictionary*) params;

@end
