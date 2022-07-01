//
//  UIButton+Extension.m
//  LifeLine
//
//  Created by 郑佳 on 16/4/11.
//  Copyright © 2016年 Triangle. All rights reserved.
//

#import "UIButton+Extension.h"

@implementation UIButton (Extension)

- (void)title:(NSString *)title titleColor:(UIColor *)titleColor image:(NSString *)image backgroundColor:(UIColor *)backgroundColor fontSize:(CGFloat)fontSize target:(id)target action:(SEL)action {
    NSString *path = [[NSBundle bundleForClass:[target class]] pathForResource:[NSString stringWithFormat:@"%@@%dx", image, (int)[[UIScreen mainScreen] scale]] ofType:@"png" inDirectory:@"FFMDTTSpecialKit.bundle"];
    
    [self setTitle:title forState:UIControlStateNormal];
    [self setTitleColor:titleColor forState:UIControlStateNormal];
    self.backgroundColor = backgroundColor;
    self.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    self.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);

    //因为是组件化封装，所以图片资源的获取需要考虑到从 Bundle包中获取， 目前只有Special使用--FFMDTTSpecialKit.bundle
//    [self setImage:[UIImage imageWithContentsOfFile:path] forState:UIControlStateNormal];
    [self setImage:[UIImage imageWithContentsOfFile:path] forState:UIControlStateNormal];
}

@end
