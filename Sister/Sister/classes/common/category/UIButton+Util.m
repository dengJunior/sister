//
//  UIButton+Util.m
//  Sister
//
//  Created by gaokunpeng on 16/8/19.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "UIButton+Util.h"

@implementation UIButton (Util)


+ (UIButton *)createBtnTitle:(NSString *)title imageName:(NSString *)imageName selectImageName:(NSString *)selectImageName target:(id)target action:(SEL)action {
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    if (title != nil) {
        [btn setTitle:title forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    
    if (imageName != nil) {
        [btn setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    }
    
    if (selectImageName != nil) {
        [btn setBackgroundImage:[UIImage imageNamed:selectImageName] forState:UIControlStateSelected];
    }
    
    if (target && action) {
        [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    
    
    return btn;
}

@end
