//
//  LightTableViewCell.h
//  LightTabelViewTest
//
//  Created by 杨启晖 on 14/12/4.
//  Copyright (c) 2014年 telcolor. All rights reserved.
//

#import "Photo.h"

@interface LightTableViewCell : UITableViewCell

@property (nonatomic, strong)UILabel *photoTitleLabel;
@property (nonatomic, strong)UILabel *photoDateLabel;

- (void)configureForPhoto:(Photo *)photo;

@end
