//
//  MainViewController.m
//  LightTabelViewTest
//
//  Created by 杨启晖 on 15/1/12.
//  Copyright (c) 2015年 telcolor. All rights reserved.
//

#import "MainViewController.h"
#import "LightTableViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    LightTableViewController *lightTable = [LightTableViewController new];
    [self addChildViewController:lightTable];
    CGRect frame = CGRectMake(100, 100, 120, 368);
    lightTable.view.frame = frame;
    [self.view addSubview:lightTable.view];
    [lightTable didMoveToParentViewController:self];
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
