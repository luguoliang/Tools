//
//  LGLSlideTransitionDelegate.h
//  Tabbar
//
//  Created by 路国良 on 16/3/7.
//  Copyright © 2016年 baofoo. All rights reserved.
//

@import UIKit;

@interface LGLSlideTransitionDelegate : NSObject<UITabBarControllerDelegate>

//! The UITabBarController instance for which this object is the delegate of.
@property (nonatomic, strong) UITabBarController *tabBarController;


//! The gesture recognizer used for driving the interactive transition
//! between view controllers.  AAPLSlideTransitionDelegate installs this
//! gesture recognizer on the tab bar controller's view.
@property (nonatomic, strong, readonly) UIPanGestureRecognizer *panGestureRecongizer;

@end
