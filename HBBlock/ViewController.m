//
//  ViewController.m
//  HBBlock
//
//  Created by aplle on 2017/2/20.
//  Copyright © 2017年 fenger. All rights reserved.
//

#import "ViewController.h"
#import "HBBlockBasicUseVC.h"
#import "HBBlockPropertyUseVC.h"
#import "HBBlockParameterUseVC.h"
#import "HBBlockReturnUserVC.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic , strong)NSArray * allData;
@property (nonatomic , strong)UITableView * tableView;
@end

@implementation ViewController
- (NSArray *)allData{

    if (!_allData) {
        _allData = @[@"block的基本使用HBBlockBasicUseVC",@"block作为属性HBBlockPropertyUseVC",@"block作为参数HBBlockParameterUseVC",@"block作为返回值HBBlockReturnUserVC"];
    }
    return _allData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"block的使用";
    self.view.backgroundColor = [UIColor whiteColor];
    self.tableView = [[UITableView alloc]initWithFrame:self.view.frame];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return self.allData.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *cellId = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell==nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    cell.textLabel.text = self.allData[indexPath.row];
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    switch (indexPath.row) {
        case 0:
        {
            HBBlockBasicUseVC *vc = [[HBBlockBasicUseVC alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 1:
        {
            HBBlockPropertyUseVC *vc = [[HBBlockPropertyUseVC alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 2:
        {
            HBBlockParameterUseVC *vc = [[HBBlockParameterUseVC alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 3:
        {
            HBBlockReturnUserVC *vc = [[HBBlockReturnUserVC alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
        default:
            break;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
