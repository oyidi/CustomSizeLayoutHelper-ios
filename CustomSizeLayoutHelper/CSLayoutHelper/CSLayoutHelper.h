//
//  LayoutHelper.h
//
//
//  Created by LZB on 16/1/18.
//  Copyright © 2016年 YZ-PC. All rights reserved.
//

#ifndef LayoutHelper_h
#define LayoutHelper_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface CSLayoutHelper : NSObject

-(id) initWithUIData:(CGFloat) screenWidthI screenHeight:(CGFloat) screenHeightI maxFactorX:(CGFloat) maxFactorXI maxFactorY:(CGFloat) maxFactorYI scale:(CGFloat) scale isLandSpace:(BOOL) landspace ;
-(void) addView:(UIView*) mainView newView:(UIView*) newView x:(CGFloat) x y:(CGFloat) y width:(CGFloat) width height:(CGFloat) height;
-(void) resizeView:(UIView*) newView x:(CGFloat) x y:(CGFloat) y width:(CGFloat) width height:(CGFloat) height;
- (void) addViewWithMainView:(UIView*) mainView newView:(UIView*) newView x:(CGFloat) x y:(CGFloat) y width:(CGFloat) width height:(CGFloat) height;
@property CGFloat screenWidth, screenHeight, maxFactorX, maxFactorY, perX, perY,factor;
@end
#endif /* LayoutHelper_h */
