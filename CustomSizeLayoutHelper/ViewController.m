//
//  ViewController.m
//  CustomSizeLayoutHelper
//
//  Created by Pi on 2017/1/20.
//  Copyright © 2017年 WhenWind. All rights reserved.
//

#import "ViewController.h"
#import "CSLayoutHelper.h"

@interface ViewController () {
    CSLayoutHelper *layoutHelper;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 初始化布局管理
    layoutHelper = [[CSLayoutHelper alloc] initWithUIData:[[UIScreen mainScreen] currentMode].size.width screenHeight:[[UIScreen mainScreen] currentMode].size.height maxFactorX:1000 maxFactorY:1000 scale:[UIScreen mainScreen].scale isLandSpace:YES];
    
    
    
    int button1Width = 200;
    UIButton *button1 = [[UIButton alloc] init];
    [button1 setTitle:@"Button" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [layoutHelper addView:self.view newView:button1 x:500 - button1Width / 2 y:0 width:button1Width height:100];
    UIButton *button2 = [[UIButton alloc] init];
    [button2 setTitle:@"Button" forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [layoutHelper addView:self.view newView:button2 x:600 y:300 width:200 height:100];
    UIButton *button3 = [[UIButton alloc] init];
    [button3 setTitle:@"Button" forState:UIControlStateNormal];
    [button3 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [layoutHelper addView:self.view newView:button3 x:600 y:400 width:200 height:100];
    
    UIView *colorView1 = [[UIView alloc] init];
    [colorView1 setBackgroundColor:[UIColor redColor]];
    [layoutHelper addView:self.view newView:colorView1 x:100 y:400 width:100 height:100];
    UIView *colorView2 = [[UIView alloc] init];
    [colorView2 setBackgroundColor:[UIColor greenColor]];
    [layoutHelper addView:self.view newView:colorView2 x:100 y:500 width:100 height:100];
    UIView *colorView3 = [[UIView alloc] init];
    [colorView3 setBackgroundColor:[UIColor blueColor]];
    [layoutHelper addView:self.view newView:colorView3 x:100 y:600 width:100 height:100];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
