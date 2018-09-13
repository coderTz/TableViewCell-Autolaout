//
//  MoreContentVC.m
//  testCellApp
//
//  Created by 谈振 on 2018/9/13.
//  Copyright © 2018年 CoderTz. All rights reserved.
//

#import "MoreContentVC.h"
#import "MoreContentCell.h"

#define WIDE   [UIScreen mainScreen].bounds.size.width
#define HIGHT  [UIScreen mainScreen].bounds.size.height
@interface MoreContentVC ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *TableView;
@property (nonatomic, copy) NSArray *array;
@property (nonatomic, copy) NSArray *Narray;
@property (nonatomic, copy) NSArray *Imgarray;
@property (nonatomic, strong) MoreWorkModel *MoreModel;
@property (nonatomic, strong) NSMutableArray *dataArray;
@end

@implementation MoreContentVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"随机测试cell";
   
    self.dataArray = [NSMutableArray new];
    self.array = @[@"爱神的箭安徽的痕迹安居客的哈达就爱好的骄傲和大家看韩剧啊看见大家哈电锯惊魂大河健康大会很大很大",@"和客户打好打开的哈卡拉号地块打火盛大公开给大哥黄金大劫案点击间隔大家都噶ad机等哈就等哈就等哈就等哈就打湿哒哒多撒大所大所大大所大爱仕达大大哈接口的哈酒等哈就到哈市将",@"萨达少打卡打卡款大健康大健康了大客户借记卡和",@"dasbbdasdasbadsasjdjsad",@"kjasjhjkhd的飒爽的很骄傲和扩大会的哈几点回家卡ajhkdasjkdhjashdahshdjhashjdhasdkl;ad;ka;dla;skdal;kdalsjdj打死乱绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿ahdjahdjahda"];
    self.Narray = @[@"爱迪生",@"爱马仕",@"马云",@"马化腾",@"刘亦菲"];
    self.Imgarray= @[@"Leonardo2",@"Leonardo4",@"Picasso2",@"Picasso4",@"Rembrandt1"];
    [self loadData];
    [self.view addSubview:self.TableView];
    _TableView.estimatedRowHeight = 200;
    _TableView.rowHeight = UITableViewAutomaticDimension;
   
}
- (void)loadData{
   
    for (int i= 0; i<5; i++) {
         self.MoreModel =[[MoreWorkModel alloc] init];
        self.MoreModel.title =   self.Narray[i];
        self.MoreModel.moreConten = self.array[i];
        self.MoreModel.imag = self.Imgarray[i];
        [self.dataArray addObject:self.MoreModel];
    }
}
- (UITableView *)TableView{
    if (!_TableView) {
        _TableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, WIDE, HIGHT) style:UITableViewStylePlain];
        _TableView.delegate = self;
        _TableView.dataSource = self;
        _TableView.tableFooterView = [UIView new];
       
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
    MoreContentCell * noCell = [MoreContentCell cellWithTableView:tableView];
    MoreWorkModel *model =  self.dataArray[indexPath.row];
    noCell.nameLab.text = model.title;
    noCell.moreContentTextView.text = model.isSelect ? model.moreConten: @"点击查看更多 >";
    noCell.moreContentTextView.textAlignment = model.isSelect ? 0:1;
    [noCell.imageView setImage:[UIImage imageNamed:model.imag]];
    return noCell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    MoreContentCell *moreCell = (MoreContentCell *)[tableView cellForRowAtIndexPath:indexPath];
    
   MoreWorkModel *model =  self.dataArray[indexPath.row];
    model.isSelect = !model.isSelect;
    
    self.dataArray[indexPath.row] = model;
    moreCell.moreContentTextView.text = model.isSelect ? model.moreConten: @"点击查看更多 >";
    moreCell.moreContentTextView.textAlignment = model.isSelect ? 0:1;
    [UIView animateWithDuration:0.1 animations:^{
          [self.TableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
    }];
// 垃圾方法 什么鬼玩意
//    [self.TableView beginUpdates];
//     [self.TableView endUpdates];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
@implementation MoreWorkModel :NSObject

@end
