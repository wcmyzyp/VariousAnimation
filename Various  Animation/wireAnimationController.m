//
//  wireAnimationController.m
//  Various  Animation
//
//  Created by 吴曹敏 on 17/2/7.
//  Copyright © 2017年 WCM. All rights reserved.
//

#import "wireAnimationController.h"

@interface wireAnimationController ()

@end

@implementation wireAnimationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(50, 100, 300, 500)];
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.path = path.CGPath;
    shapeLayer.strokeColor = [UIColor redColor].CGColor;
    shapeLayer.fillColor = [UIColor clearColor].CGColor;
    [self.view.layer addSublayer:shapeLayer];
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    animation.fillMode = kCAFillModeForwards;
    animation.fromValue = @(0);
    animation.toValue = @(1);
    animation.duration = 5.0;
    animation.repeatCount = HUGE_VALF;
    animation.autoreverses = YES;
    [shapeLayer addAnimation:animation forKey:@"animation"];

   
}



@end
