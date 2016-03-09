//
//  UIView+LGL_VideosRadian.m
//  asadas
//
//  Created by 路国良 on 16/3/2.
//  Copyright © 2016年 baofoo. All rights reserved.
//

#import "UIView+LGL_VideosRadian.h"

@implementation UIView (LGL_VideosRadian)

-(void)lgl_addRadinsWith{
    CGSize lgl_finalSize = CGSizeMake(self.frame.size.width, self.frame.size.height); //(320,200)
    CGFloat lgl_layerHeight = lgl_finalSize.height*0.9;//(180)
    CAShapeLayer*lgl_layer = [CAShapeLayer layer];
    UIBezierPath*lgl_path = [UIBezierPath bezierPath];
    [lgl_path moveToPoint:CGPointMake(0, lgl_finalSize.height - lgl_layerHeight)];//(0,20)
//    [lgl_path addLineToPoint:CGPointMake(0, lgl_finalSize.height - 1)];//(0,199)
//    [lgl_path addLineToPoint:CGPointMake(lgl_finalSize.width, lgl_finalSize.height - 1)];//(320,199)
    [lgl_path addLineToPoint:CGPointMake(0, lgl_finalSize.height )];//(0,199)
    [lgl_path addLineToPoint:CGPointMake(lgl_finalSize.width, lgl_finalSize.height )];//(320,199)
    [lgl_path addLineToPoint:CGPointMake(lgl_finalSize.width, lgl_finalSize.height - lgl_layerHeight)];//(320,20)
    [lgl_path addQuadCurveToPoint:CGPointMake(0, lgl_finalSize.height - lgl_layerHeight) controlPoint:CGPointMake(lgl_finalSize.width/2, lgl_finalSize.height - lgl_layerHeight - 20)];
    lgl_layer.path = (lgl_path).CGPath;//(0,20),(160,0)
    //    layer.fillColor= [UIColor blueColor].CGColor;
    self.layer.mask = lgl_layer;
}

-(void)lgl_lockAnimationForView{
    
    CALayer *lbl = [view layer];
    CGPoint posLbl = [lbl position];
    CGPoint y = CGPointMake(posLbl.x-10, posLbl.y);
    CGPoint x = CGPointMake(posLbl.x+10, posLbl.y);
    CABasicAnimation * animation = [CABasicAnimation animationWithKeyPath:@"position"];
    [animation setTimingFunction:[CAMediaTimingFunction
                                  functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [animation setFromValue:[NSValue valueWithCGPoint:x]];
    [animation setToValue:[NSValue valueWithCGPoint:y]];
    [animation setAutoreverses:YES];
    [animation setDuration:0.08];
    [animation setRepeatCount:3];
    [lbl addAnimation:animation forKey:nil];

}

@end
