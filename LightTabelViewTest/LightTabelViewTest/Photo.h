//
//  Photo.h
//  LightTabelViewTest
//
//  Created by 杨启晖 on 14/12/4.
//  Copyright (c) 2014年 telcolor. All rights reserved.
//

@class User;


@interface Photo : NSObject <NSCoding>

@property (nonatomic) int64_t identifier;
@property (nonatomic, copy) NSString* name;
@property (nonatomic, strong) NSDate* creationDate;
@property (nonatomic) double rating;

@property (nonatomic, weak) User* user;

- (NSString*)authorFullName;
- (double)adjustedRating;

@end
