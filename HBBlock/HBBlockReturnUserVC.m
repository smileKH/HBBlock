//
//  HBBlockReturnUserVC.m
//  HBBlock
//
//  Created by aplle on 2017/2/20.
//  Copyright © 2017年 fenger. All rights reserved.
//

#import "HBBlockReturnUserVC.h"
#import "HBBlockClass.h"
@interface HBBlockReturnUserVC ()

@end

@implementation HBBlockReturnUserVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"请看控制台和代码";
    self.view.backgroundColor = [UIColor whiteColor];
    //block作为方法的返回值
    HBBlockClass *class = [[HBBlockClass alloc]init];
    MyBlockReturnUse block = [class getBlock];
    block();
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
