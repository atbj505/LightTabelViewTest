//
//  Store.h
//  LightTabelViewTest
//
//  Created by 杨启晖 on 14/12/4.
//  Copyright (c) 2014年 telcolor. All rights reserved.
//

@interface Store : NSObject

@property (readonly, nonatomic, strong) NSArray* photos;
@property (readonly, nonatomic, strong) NSArray* users;

+ (instancetype)store;

- (NSArray*)sortedPhotos;

@end
