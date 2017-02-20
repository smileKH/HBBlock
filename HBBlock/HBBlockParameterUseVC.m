//
//  HBBlockParameterUseVC.m
//  HBBlock
//
//  Created by aplle on 2017/2/20.
//  Copyright © 2017年 fenger. All rights reserved.
//

#import "HBBlockParameterUseVC.h"
#import "HBBlockClass.h"
@interface HBBlockParameterUseVC ()

@end

@implementation HBBlockParameterUseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"请看控制台和代码";
    self.view.backgroundColor = [UIColor whiteColor];
    //block作为方法参数实现
    HBBlockClass *class = [[HBBlockClass alloc]init];
    [class method1:^(int a, int b) {
        NSLog(@"a = %d b = %d",a,b);
    }];
    
    [class parameterA:4 andParameterB:5 andReturn:^(int c) {
        NSLog(@"c = %d",c);
    }];
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
