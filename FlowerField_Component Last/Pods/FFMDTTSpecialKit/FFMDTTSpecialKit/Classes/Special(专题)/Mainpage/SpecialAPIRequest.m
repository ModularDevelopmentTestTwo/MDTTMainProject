//
//  SpecialAPIRequest.m
//  FlowerField
//
//  Created by kepuna on 2017/9/5.
//  Copyright © 2017年 Triangle. All rights reserved.
//

#import "SpecialAPIRequest.h"

@implementation SpecialAPIRequest

- (NSString *)apiRequestURL {
    return @"http://m.htxq.net/servlet/SysArticleServlet?action=mainList";
}

- (NSDictionary *)apiRequestParams {
    
    NSMutableDictionary *params = @{}.mutableCopy;
    params[@"currentPageIndex"] = @0;
    params[@"pageSize"] = @(5);
    return params.copy;
}

- (NSString *)method {
    return GET;
}

- (BOOL)isCache {
    return YES;
}

- (id)fetchDataWithReformer:(NSDictionary<FFReformProtocol> *)reformer {
    NSMutableArray *tempArray = [NSMutableArray array];
    
//    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
//    NSString *filePath1 = [bundle pathForResource:@"special_page.json" ofType:nil];
//    NSString *filePath2 = [bundle pathForResource:@"json/special_page" ofType:@"json"];
//    NSString *filePath3 = [bundle pathForResource:@"special_page" ofType:@"json" inDirectory:@"FFMDTTSpecialKit.bundle"];
//    NSString *filePath4 = [bundle pathForResource:@"special_page.json" ofType:@"" inDirectory:@"FFMDTTSpecialKit.bundle"];
//
//    NSString *filePath5 = [bundle pathForResource:@"json/special_page.json" ofType:@"" inDirectory:@"FFMDTTSpecialKit.bundle"];
//    NSString *filePath6 = [bundle pathForResource:@"json/special_page" ofType:@"json" inDirectory:@"FFMDTTSpecialKit.bundle"];
//    NSData *data1 = [[NSData alloc] initWithContentsOfFile:filePath1];
//    NSLog(@"---filePath1: %@", filePath1);
//    NSLog(@"---filePath2: %@", filePath2);
//    NSLog(@"---filePath3: %@", filePath3);
//    NSLog(@"---filePath4: %@", filePath4);
//    NSLog(@"---filePath5: %@", filePath5);
//    NSLog(@"---filePath6: %@", filePath6);
//    NSLog(@"---data1: %@", data1);
    
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"special_page" ofType:@"json"];
//    NSData *data = [[NSData alloc] initWithContentsOfFile:path];
    
    NSString *path = [[NSBundle bundleForClass:[self class]] pathForResource:@"json/special_page.json" ofType:nil inDirectory:@"FFMDTTSpecialKit.bundle"];
    NSData *data = [[NSData alloc] initWithContentsOfFile:path];
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    for (NSDictionary *dict in jsonDict[@"result"]) {
        NSDictionary *dataDict = [reformer reformData:dict];
        [tempArray addObject:dataDict];
    }
    return tempArray.copy;
}

@end
