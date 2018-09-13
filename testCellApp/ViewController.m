//
//  ViewController.m
//  testCellApp
//
//  Created by 谈振 on 2018/9/12.
//  Copyright © 2018年 CoderTz. All rights reserved.
//

#import "ViewController.h"
#import "NoUserNameCell.h"
#import "MoreContentVC.h"
#define WIDE   [UIScreen mainScreen].bounds.size.width
#define HIGHT  [UIScreen mainScreen].bounds.size.height
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *TableView;
@property (nonatomic, copy) NSArray *array;
@property (nonatomic, copy) NSArray *Narray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"随机测试cell";
    self.array = @[@"爱神的箭安徽的痕迹安居客的哈达就爱好的骄傲和大家看韩剧",@"和客户打好打开的哈卡拉号地块打火机等哈就等哈就等哈就等哈就打湿哒哒多撒大所大所大大所大爱仕达大大哈接口的哈酒等哈就到哈市将",@"萨达哈哈大客户借记卡和",@"dasbbdasdasbadsasjdjsad",@"kjasjhjkhdajhkdasjkdhjashdahshdjhashjdhasdkl;ad;ka;dla;skdal;kdalsjdjahdjahdjahda"];
    self.Narray = @[@"爱迪生",@"爱马仕",@"马云",@"马化腾",@"刘亦菲"];
    [self.view addSubview:self.TableView];
    // Do any additional setup after loading the view, typically from a nib.
}
- (UITableView *)TableView{
    if (!_TableView) {
        _TableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, WIDE, HIGHT) style:UITableViewStylePlain];
        _TableView.delegate = self;
        _TableView.dataSource = self;
        _TableView.tableFooterView = [UIView new];
        _TableView.estimatedRowHeight = 100;
        _TableView.rowHeight = UITableViewAutomaticDimension;
    }
    return _TableView;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NoUserNameCell * noCell = [NoUserNameCell cellWithTableView:tableView];
    noCell.NameLab.text= self.array[indexPath.row];
    noCell.titleLab.text = self.Narray[indexPath.row];
    return noCell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    MoreContentVC * vc = [MoreContentVC new];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
