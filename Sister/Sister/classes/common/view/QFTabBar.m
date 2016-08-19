//
//  QFTabBar.m
//  Sister
//
//  Created by gaokunpeng on 16/8/19.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "QFTabBar.h"


@interface QFTabBar ()

@property (nonatomic, weak) UIButton *publishBtn;

@end

@implementation QFTabBar


- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundImage = [UIImage imageNamed:@"tabbar-light"];
        
        //创建发布按钮
        UIButton *btn = [UIButton createBtnTitle:nil imageName:@"tabBar_publish_icon" selectImageName:@"tabBar_publish_click_icon" target:self action:@selector(publishAction)];
        btn.size = btn.currentBackgroundImage.size;
        [self addSubview:btn];
        self.publishBtn = btn;
        
        
        
        self.tintColor = [UIColor blackColor];
        
    }

    return self;
}


- (void)publishAction{
    
}


- (void)layoutSubviews{
    
    [super layoutSubviews];
    
    
    
    CGFloat width = self.width;
    CGFloat height = self.height;
    //设置发布按钮frame,显示在最中间
    self.publishBtn.center = CGPointMake(width * 0.5, height * 0.5);
    
    //设置其他按钮的frame
    CGFloat buttonY = 0;
    CGFloat buttonW = width / 5;
    CGFloat buttonH = height;
    NSInteger index = 0;
    for (UIView *button in self.subviews) {
        //如果是系统的按钮，继续执行
        if (![button isKindOfClass:NSClassFromString(@"UITabBarButton")])
            continue;

        //发布按钮后面的按钮都要加1
        CGFloat buttonX = buttonW * ((index > 1) ? (index + 1) : index);
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        //索引+1
        index ++;
    }

    
}





@end
