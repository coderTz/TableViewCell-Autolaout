//
//  NoUserNameCell.h
//  testCellApp
//
//  Created by 谈振 on 2018/9/12.
//  Copyright © 2018年 CoderTz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NoUserNameCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *NameLab;
@property (weak, nonatomic) IBOutlet UILabel *titleLab;
@property (weak, nonatomic) IBOutlet UIImageView *imag;

// 通过tableview快速创建一个cell
+ (instancetype)cellWithTableView:(UITableView *)tableview;
@end
