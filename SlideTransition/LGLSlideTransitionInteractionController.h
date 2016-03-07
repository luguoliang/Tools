//
//  LGLSlideTransitionInteractionController.h
//  Tabbar
//
//  Created by 路国良 on 16/3/7.
//  Copyright © 2016年 baofoo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LGLSlideTransitionInteractionController : UIPercentDrivenInteractiveTransition

- (instancetype)initWithGestureRecognizer:(UIPanGestureRecognizer *)gestureRecognizer NS_DESIGNATED_INITIALIZER;

- (instancetype)init NS_UNAVAILABLE;

@end
