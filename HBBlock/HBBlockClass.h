//
//  HBBlockClass.h
//  HBBlock
//
//  Created by aplle on 2017/2/20.
//  Copyright © 2017年 fenger. All rights reserved.
//

#import <Foundation/Foundation.h>
//block作为属性 第一步
typedef void(^MyBlockPropertyUse)(NSString *string);
typedef void (^MyBlockPropertyUse1)(NSString *str,int a);

//block作为参数 第一步
typedef void (^MyBlockParameterUse)(int a, int b);
typedef void (^MyBlockParameterUse1)(int c);

//block作为返回值
typedef void (^MyBlockReturnUse)(void);


@interface HBBlockClass : NSObject
//block作为属性 第二步
@property (nonatomic , strong)MyBlockPropertyUse  block1;
@property (nonatomic , strong)MyBlockPropertyUse1 block2;

//block作为属性
-(void)blockPropertyUse;

//block作为方法的参数 第二步
-(void)method1:(MyBlockParameterUse)block3;
-(void)parameterA:(int)A andParameterB:(int)B andReturn:(MyBlockParameterUse1)block4;

//block作为返回值
-(MyBlockReturnUse)getBlock;

@end
