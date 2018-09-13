//
//  MoreContentCell.h
//  testCellApp
//
//  Created by 谈振 on 2018/9/13.
//  Copyright © 2018年 CoderTz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoreContentCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLab;
@property (weak, nonatomic) IBOutlet UITextView *moreContentTextView;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

// 通过tableview快速创建一个cell
+ (instancetype)cellWithTableView:(UITableView *)tableview;
@end
