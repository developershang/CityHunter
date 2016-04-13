//
//  WNXRmdCellModel.m
//  WNXHuntForCity
    
//
//  Created by MacBook on 15/7/11.
//  Copyright (c) 2015年 shang. All rights reserved.
//

#import "WNXRmdCellModel.h"

@implementation WNXRmdCellModel

+ (instancetype)rmdCellModelWithDict:(NSDictionary *)dict
{
    WNXRmdCellModel *cellModel = [[self alloc] init];
    cellModel.pic = dict[@"pic"];
    cellModel.ch = dict[@"ch"];
    
    return cellModel;
}

@end
