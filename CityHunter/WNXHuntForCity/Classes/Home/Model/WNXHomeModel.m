//
//  WNXHomeModel.m
//  WNXHuntForCity
    
//
//  Created by MacBook on 15/7/20.
//  Copyright (c) 2015年 shang. All rights reserved.
//  主cell的模型,包括headView的模型和cell的模型

#import "WNXHomeModel.h"
#import <MJExtension.h>

@implementation WNXHomeModel

+ (instancetype)homeModelWithDict:(NSDictionary *)dict
{
    //便利构造方法
    WNXHomeModel *home = [[WNXHomeModel alloc] init];
    
    [home setKeyValues:dict];
    
    return home;
}

@end
