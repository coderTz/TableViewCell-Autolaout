//
//  NoUserNameCell.m
//  testCellApp
//
//  Created by 谈振 on 2018/9/12.
//  Copyright © 2018年 CoderTz. All rights reserved.
//

#import "NoUserNameCell.h"

@implementation NoUserNameCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString * ID = @"NoUserNameCell";
    NoUserNameCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        // 从xib加载cell
        cell = [[[NSBundle mainBundle] loadNibNamed:@"NoUserNameCell" owner:self options:nil] lastObject];
    }
    return  cell;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
