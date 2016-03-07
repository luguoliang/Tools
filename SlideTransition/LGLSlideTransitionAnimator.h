//
//  LGLSlideTransitionAnimator.h
//  Tabbar
//
//  Created by 路国良 on 16/3/7.
//  Copyright © 2016年 baofoo. All rights reserved.
//

@import UIKit;

@interface LGLSlideTransitionAnimator : NSObject <UIViewControllerAnimatedTransitioning>

- (instancetype)initWithTargetEdge:(UIRectEdge)targetEdge;

//! The value for this property determines which direction the view controllers
//! slide during the transition.  This must be one of UIRectEdgeLeft or
//! UIRectEdgeRight.
@property (nonatomic, readwrite) UIRectEdge targetEdge;

@end
