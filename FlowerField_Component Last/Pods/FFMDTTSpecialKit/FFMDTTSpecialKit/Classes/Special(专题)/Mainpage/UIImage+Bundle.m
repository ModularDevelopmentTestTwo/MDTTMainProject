//
//  UIImage+Bundle.m
//  FFMDTTSpecialKit
//
//  Created by Hank on 2022/6/30.
//

#import "UIImage+Bundle.h"

@implementation UIImage (Bundle)

+ (UIImage *)imageWithBundle:(Class)aClass imgName:(NSString *)imageName {
//    NSString *path1 = [[NSBundle bundleForClass:[self class]] pathForResource:@"pc_default_avatar.png" ofType:nil inDirectory:@"FFMDTTSpecialKit.bundle"];
//    NSString *path2 = [[NSBundle bundleForClass:[self class]] pathForResource:@"pc_default_avatar.png" ofType:nil inDirectory:@"FFMDTTSpecialKit.bundle"];
//    NSString *path3 = [[NSBundle bundleForClass:[self class]] pathForResource:@"pc_default_avatar@2x" ofType:@"png" inDirectory:@"FFMDTTSpecialKit.bundle"];
//    NSString *path4 = [[NSBundle bundleForClass:[self class]] pathForResource:@"pc_default_avatar@3x" ofType:@"png" inDirectory:@"FFMDTTSpecialKit.bundle"];
//    NSData *data = [[NSData alloc] initWithContentsOfFile:path1];
//    NSLog(@"---path1: %@", path1);
//    NSLog(@"---path2: %@", path2);
//    NSLog(@"---path3: %@", path3);
//    NSLog(@"---path4: %@", path4);
//    NSLog(@"---scale: %0.2f, %d", [[UIScreen mainScreen] scale], (int)[[UIScreen mainScreen] scale]);
//    NSLog(@"---data: %@", data);
    
    NSString *path = [[NSBundle bundleForClass:aClass] pathForResource:[NSString stringWithFormat:@"%@@%dx", imageName, (int)[[UIScreen mainScreen] scale]] ofType:@"png" inDirectory:@"FFMDTTSpecialKit.bundle"];
    return [UIImage imageWithContentsOfFile:path];
}

@end
