//
//  WNXRmdPicCell.m
//  WNXHuntForCity
    
//
//  Created by MacBook on 15/7/11.
//  Copyright (c) 2015年 shang. All rights reserved.
//

#import "WNXRmdPicCell.h"
#import <UIImageView+WebCache.h>

@interface WNXRmdPicCell()

//图片view
@property (weak, nonatomic) IBOutlet UIImageView *picImageView;

@end

@implementation WNXRmdPicCell

- (void)awakeFromNib {
    self.picImageView.contentMode = UIViewContentModeScaleToFill;
    self.contentView.clipsToBounds = YES;
}

+ (instancetype)cellWithTabelView:(UITableView *)tableView rmdPicModel:(WNXRmdCellModel *)model
{
    static NSString *identifier = @"rmdPicCell";

    WNXRmdPicCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] lastObject];
    }
    

    cell.model = model;
    return cell;
}

- (void)setModel:(WNXRmdCellModel *)model
{
    _model = model;
    [self.picImageView sd_setImageWithURL:[NSURL URLWithString:model.pic] placeholderImage:[UIImage imageNamed:@"cover_headerView"]];
}

@end
