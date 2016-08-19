//
//  MainTabBarController.m
//  Sister
//
//  Created by gaokunpeng on 16/8/18.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "MainTabBarController.h"
#import "QFTabBar.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController


+ (void)initialize {
    
    NSDictionary *attrDict = @{NSForegroundColorAttributeName: [UIColor grayColor]};
    NSDictionary *selectAttrDict = @{NSForegroundColorAttributeName: [UIColor blackColor]};
    
    //统一设置tabbarItem的样式
    [[UITabBarItem appearance] setTitleTextAttributes:attrDict forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:selectAttrDict forState:UIControlStateSelected];

    
}


- (void)addChildControllerCtrlName:(NSString *)ctrlName title:(NSString *)title imageName:(NSString *)imageName selectImageName:(NSString *)selectImageName {
    
    Class cls = NSClassFromString(ctrlName);
    
    UIViewController *vc = [[cls alloc] init];
    
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:imageName];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectImageName];
    
    
    //导航
    UINavigationController *navCtrl = [[UINavigationController alloc] initWithRootViewController:vc];
    
    [self addChildViewController:navCtrl];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    //添加子控制器
    [self addChildControllerCtrlName:@"EssenceViewController" title:@"精华" imageName:@"tabBar_essence_icon" selectImageName:@"tabBar_essence_click_icon"];
    
    [self addChildControllerCtrlName:@"NewsViewController" title:@"新帖" imageName:@"tabBar_new_icon" selectImageName:@"tabBar_new_click_icon"];
    
    [self addChildControllerCtrlName:@"FollowViewController" title:@"关注" imageName:@"tabBar_friendTrends_icon" selectImageName:@"tabBar_friendTrends_click_icon"];
    
    [self addChildControllerCtrlName:@"ProfileViewController" title:@"我" imageName:@"tabBar_me_icon" selectImageName:@"tabBar_me_click_icon"];
    
    
    //设置tabBar
    [self setValue:[[QFTabBar alloc] init] forKey:@"tabBar"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
