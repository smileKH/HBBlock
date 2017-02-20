//
//  HBBlockClass.m
//  HBBlock
//
//  Created by aplle on 2017/2/20.
//  Copyright © 2017年 fenger. All rights reserved.
//

#import "HBBlockClass.h"

@implementation HBBlockClass


//block作为属性
-(void)blockPropertyUse{

    self.block1(@"block作为属性被执行了");
    self.block2(@"block还加了个别的东西",5);
    
    NSLog(@"blockPropertyUse方法被调用了");
}

//block作为方法的参数 第二步
-(void)method1:(MyBlockParameterUse)block3{

    NSLog(@"mothod1被执行了");
    block3(3,4);//回调

}
-(void)parameterA:(int)A andParameterB:(int)B andReturn:(MyBlockParameterUse1)block4{

    NSLog(@"block作为参数被执行了");
    int c = 0;
    c = A*B;
    //回调
    block4(c);
    
}

//block作为返回值
-(MyBlockReturnUse)getBlock{

    return ^{
    
        NSLog(@"getBlock被调用了");
    };
}
@end
