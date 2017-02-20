//
//  HBBlockBasicUseVC.m
//  HBBlock
//
//  Created by aplle on 2017/2/20.
//  Copyright © 2017年 fenger. All rights reserved.
//

#import "HBBlockBasicUseVC.h"
int b = 22;
@interface HBBlockBasicUseVC ()

@end

@implementation HBBlockBasicUseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"请看控制台和代码";
    self.view.backgroundColor = [UIColor whiteColor];
    
    /**
     *  1、block内部默认是不能修改外面的局部变量，但是可以通过_block关键字修饰来改变局部变量
     *  2、block内部可以改变全局变量
     */
    
    __block  int a = 10;
    
    void (^block1)() = ^{
        //block内部可以访问外面的变量
        NSLog(@"a = %d",a);
        //默认情况下,block内部不能修改外面的局部变量
        //给局部变量加上__block关键字,这个局部变量就可以在block内部修改了
        a = 20;
        NSLog(@"修改之后a = %d",a);
        //默认可以对全局变量进行修改
        NSLog(@"b = %d",++b);
        
    };
    block1();
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
