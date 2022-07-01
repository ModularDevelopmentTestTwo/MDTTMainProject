//
//  UIImage+Bundle.h
//  FFMDTTSpecialKit
//
//  Created by Hank on 2022/6/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Bundle)

+ (UIImage *)imageWithBundle:(Class)aClass imgName:(NSString *)imageName;

@end

NS_ASSUME_NONNULL_END
