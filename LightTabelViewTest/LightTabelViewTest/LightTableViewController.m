//
//  LightTableViewController.m
//  LightTabelViewTest
//
//  Created by 杨启晖 on 14/12/4.
//  Copyright (c) 2014年 telcolor. All rights reserved.
//

#import "LightTableViewController.h"
#import "LightDataSource.h"
#import "LightTableViewCell.h"
#import "Store.h"
#import "Photo.h"

static NSString * const PhotoCellIdentifier = @"PhotoCell";

@interface LightTableViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong)LightDataSource *dataSource;

@end

@implementation LightTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Photos";
    
    [self setUpTableView];
}

- (void)setUpTableView{
    
    TableViewCellConfigureBlock configBlock = ^(LightTableViewCell *cell, Photo *photo) {
        [cell configureForPhoto:photo];
    };
    
    NSArray *photos = [[Store store]sortedPhotos];
    
    self.dataSource = [[LightDataSource alloc]initWithItems:photos
                                             cellIdentifier:PhotoCellIdentifier
                                         configureCellBlock:configBlock];
    
    self.tableView.dataSource = self.dataSource;
    
    [self.tableView registerClass:[LightTableViewCell class] forCellReuseIdentifier:PhotoCellIdentifier];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}
@end