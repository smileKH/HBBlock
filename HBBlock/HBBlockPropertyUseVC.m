//
//  HBBlockPropertyUseVC.m
//  HBBlock
//
//  Created by aplle on 2017/2/20.
//  Copyright © 2017年 fenger. All rights reserved.
//

#import "HBBlockPropertyUseVC.h"
#import "HBBlockClass.h"
@interface HBBlockPropertyUseVC ()

@end

@implementation HBBlockPropertyUseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"请看控制台和代码";
    self.view.backgroundColor = [UIColor whiteColor];
    //block作为属性实现
    HBBlockClass *class = [[HBBlockClass alloc]init];
    //一个参数
    class.block1 = ^(NSString *str){
    
        NSLog(@"str =%@",str);
    };
    
    //两个参数
    class.block2 = ^(NSString *str,int a){
    
        NSLog(@"str1 = %@ int = %d",str,a);
    };
    
    [class blockPropertyUse];
    
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
