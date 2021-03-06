//
//  MABasicBtnViewController.m
//  MAButtonTool
//
//  Created by Song Liang on 16/4/5.
//  Copyright © 2016年 MISSAJJ. All rights reserved.
//

#import "MABasicBtnViewController.h"
#import "MAButtonTool.h"

@interface MABasicBtnViewController ()

@end

@implementation MABasicBtnViewController


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    //顶部左边的按钮
    [self leftTopBtn];
    
    //单独创建左边返回按钮
    //[self customleftTopBtn];
    
    
    //顶部右边的 block 按钮
    [self rightTopBlockBtn];
 
    
    
}

#pragma mark ==顶部左边的按钮==
- (void)leftTopBtn
{
    self.navigationItem.leftBarButtonItem = [MAButtonTool createButtonWithImage:@"list" position:MAButtonToolPostionLeft target:self action:@selector(clickCustomButton) type:MAButtonToolTypeCustom];
}

- (void)clickCustomButton
{
    [self showHUDText:@"Left Custom UIBarButtonItem" detailStr:@"+(UIBarButtonItem *)createButtonWithImage:(id)imageStr position:(MAButtonToolPostion)position target:(id)target action:(SEL)action type:(MAButtonToolType)type"];
    
}
#pragma mark ==单独创建自定义按钮==
- (void)customleftTopBtn
{
    UIButton * backBtn = [MAButtonTool createLeftBackButton];
    [backBtn addTarget:self action:@selector(shareMethod) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:backBtn];
}


#pragma mark ==顶部右边的按钮==
- (void)rightTopBtn
{
    self.navigationItem.rightBarButtonItem = [MAButtonTool createButtonWithImage:nil position:MAButtonToolPostionRight target:self action:@selector(shareMethod) type:MAButtonToolTypeShare];
}

#pragma mark == block 顶部右边的按钮==
- (void)rightTopBlockBtn
{
    self.navigationItem.rightBarButtonItem =
    [MAButtonTool createButtonWithImage:nil position:MAButtonToolPostionRight type:MAButtonToolTypeShare actionBlock:^(UIButton *btn) {
        
       [self showHUDText:@"Right Block UIBarButtonItem" detailStr:@"+(UIBarButtonItem *)createButtonWithImage:(id)imageStr position:(MAButtonToolPostion)position type:(MAButtonToolType)type actionBlock:(ButtonItemBlock)block"];
      
        
    }];
}



@end
