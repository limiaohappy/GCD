//
//  TabBarController.m
//  GCDDemo
//
//  Created by LeeMiao on 2019/4/2.
//  Copyright © 2019 LiMiao. All rights reserved.
//

#import "TabBarController.h"

#import "ViewController.h"           //-> GCD基础
#import "GCDOtherViewController.h"   //-> GCD其他

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // GCD 基础
    ViewController *vc = [[ViewController alloc] init];
    vc.tabBarItem.title = @"基础";
    vc.tabBarItem.selectedImage = [UIImage imageNamed:@"32pt"];
    vc.tabBarItem.image = [UIImage imageNamed:@"32pt"];

    UINavigationController *naviVC = [[UINavigationController alloc] initWithRootViewController:vc];

    GCDOtherViewController *vc2 = [[GCDOtherViewController alloc] init];
    vc2.tabBarItem.title = @"信号量";
    vc2.tabBarItem.selectedImage = [UIImage imageNamed:@"32pt"];
    vc2.tabBarItem.image = [UIImage imageNamed:@"32pt"];
    UINavigationController *naviVC2 = [[UINavigationController alloc] initWithRootViewController:vc2];

    self.viewControllers  = @[naviVC,naviVC2];

    
    // Do any additional setup after loading the view.
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
