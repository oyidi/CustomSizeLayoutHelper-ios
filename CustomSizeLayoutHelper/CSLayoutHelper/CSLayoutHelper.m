//
//  LayoutHelper.m
//  布局助手，专治各种神经病布局器和设计，以及统一Android IOS界面坐标参数
//  Created by YZ-PC on 16/1/18.
//  Copyright © 2016年 YZ-PC. All rights reserved.
//

#import "CSLayoutHelper.h"

@interface CSLayoutHelper () {
}

@end
@implementation CSLayoutHelper
@synthesize screenWidth, screenHeight, maxFactorX, maxFactorY, perX, perY, factor;
// 初始化坐标系
-(id) initWithUIData:(CGFloat) screenWidthI screenHeight:(CGFloat) screenHeightI maxFactorX:(CGFloat) maxFactorXI maxFactorY:(CGFloat) maxFactorYI scale:(CGFloat) scale isLandSpace:(BOOL) landspace {
    if(landspace == YES) {
        self.screenWidth = screenHeightI;
        self.screenHeight = screenWidthI;
    } else {
        self.screenWidth = screenWidthI;
        self.screenHeight = screenHeightI;
    }
    
    self.maxFactorX = maxFactorXI;
    self.maxFactorY = maxFactorYI;
    
    self.perX = screenWidth / maxFactorXI;
    self.perY = screenHeight / maxFactorYI;
    self.factor = scale;
    return self;
}
// 为View添加子View并按照规则初始化坐标及大小
-(void) addView:(UIView*) mainView newView:(UIView*) newView x:(CGFloat) x y:(CGFloat) y width:(CGFloat) width height:(CGFloat) height {
    int perWidth = (int)(width * self.perX / factor);
    int perHeight = (int)(height * self.perY / factor);
    CGRect orignalRect = newView.frame;
    orignalRect.size.width = perWidth;
    orignalRect.size.height = perHeight;
    orignalRect.origin.x = x * self.perX / factor;
    orignalRect.origin.y = y * self.perY / factor;
    [newView setFrame:orignalRect];
    [mainView addSubview:newView];
}
// 加入以View为母版的
- (void) addViewWithMainView:(UIView*) mainView newView:(UIView*) newView x:(CGFloat) x y:(CGFloat) y width:(CGFloat) width height:(CGFloat) height {
    CGRect mainViewFrame = mainView.frame;
    CGFloat perXs = mainViewFrame.size.width / maxFactorX;
    CGFloat perYs = mainViewFrame.size.height / maxFactorY;
    
    int perWidth = (int)(width * perXs);
    int perHeight = (int)(height * perYs);
    CGRect orignalRect = newView.frame;
    orignalRect.size.width = perWidth;
    orignalRect.size.height = perHeight;
    orignalRect.origin.x = x * perXs;
    orignalRect.origin.y = y * perYs;
    //NSLog(@"%f %f %f %f", orignalRect.origin.x, orignalRect.origin.y, orignalRect.size.width, orignalRect.size.height);
    [newView setFrame:orignalRect];
    [mainView addSubview:newView];
}
// 修改View的Frame参数
-(void) resizeView:(UIView*) newView x:(CGFloat) x y:(CGFloat) y width:(CGFloat) width height:(CGFloat) height {
    int perWidth = (int)(width * self.perX / factor);
    int perHeight = (int)(height * self.perY / factor);
    //NSLog(@"perY:%f", self.perY);
    //NSLog(@"Y:%f", y * self.perY / factor);
    CGRect orignalRect = CGRectMake(x * self.perX / factor, y * self.perY / factor, perWidth, perHeight);
    //orignalRect.size.width = perWidth;
    //orignalRect.size.height = perHeight;
    //orignalRect.origin.x = x * self.perX / factor;
    //orignalRect.origin.y = y * self.perY / factor;
    [newView setFrame:orignalRect];
    
}

@end
