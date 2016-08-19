//
//  UIButton+Util.h
//  Sister
//
//  Created by gaokunpeng on 16/8/19.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Util)


+ (UIButton *)createBtnTitle:(NSString *)title imageName:(NSString *)imageName selectImageName:(NSString *)selectImageName target:(id)target action:(SEL)action;

@end
