//
//  MoreContentVC.h
//  testCellApp
//
//  Created by 谈振 on 2018/9/13.
//  Copyright © 2018年 CoderTz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoreContentVC : UIViewController



@end
@interface MoreWorkModel :NSObject
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *imag;
@property (nonatomic, copy) NSString *moreConten;

@property (nonatomic, assign) BOOL isSelect;
@end
