//
//  WNXHomeCellModel.m
//  WNXHuntForCity
    
//
//  Created by MacBook on 15/7/20.
//  Copyright (c) 2015年 shang. All rights reserved.
//  首页cell的模型

#import "WNXHomeCellModel.h"
#import <MJExtension.h>

@implementation WNXHomeCellModel

+ (instancetype)cellModelWithDict:(NSDictionary *)dict
{
    WNXHomeCellModel *model = [[self alloc] init];
    [model setKeyValues:dict];
    return model;
}

@end
