//
//  LightTableViewCell.m
//  LightTabelViewTest
//
//  Created by 杨启晖 on 14/12/4.
//  Copyright (c) 2014年 telcolor. All rights reserved.
//

#import "LightTableViewCell.h"

@implementation LightTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.photoTitleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 44)];
        self.photoTitleLabel.numberOfLines = 2;
        self.photoDateLabel = [[UILabel alloc]initWithFrame:CGRectMake(200, 0, 100, 44)];
        self.photoDateLabel.numberOfLines = 1;
        
        [self addSubview:self.photoTitleLabel];
        [self addSubview:self.photoDateLabel];
    }
    return self;
}

- (void)configureForPhoto:(Photo *)photo
{
    self.photoTitleLabel.text = photo.name;
    self.photoDateLabel.text = [self.dateFormatter stringFromDate:photo.creationDate];
}

- (NSDateFormatter *)dateFormatter
{
    static NSDateFormatter *dateFormatter;
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        //dateFormatter.timeStyle = NSDateFormatterMediumStyle;
        dateFormatter.dateStyle = NSDateFormatterMediumStyle;
    }
    return dateFormatter;
}
@end
