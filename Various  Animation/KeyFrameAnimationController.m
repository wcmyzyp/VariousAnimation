//
//  KeyFrameAnimationController.m
//  Various  Animation
//
//  Created by 吴曹敏 on 17/2/7.
//  Copyright © 2017年 WCM. All rights reserved.
//

#import "KeyFrameAnimationController.h"

@interface KeyFrameAnimationController ()

@end

@implementation KeyFrameAnimationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(50, 100, 300, 500)];
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.path = path.CGPath;
    shapeLayer.strokeColor = [UIColor redColor].CGColor;
    shapeLayer.fillColor = [UIColor clearColor].CGColor;
    [self.view.layer addSublayer:shapeLayer];
    
    UIView *moveView = [[UIView alloc] initWithFrame:CGRectMake(20, 30, 60, 70)];
    moveView.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:moveView];
    
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    animation.path = path.CGPath;
    animation.duration = 2.0;
    animation.repeatCount = HUGE_VALF;
    animation.fillMode = kCAFillModeForwards;
    /** calculationMode：动画样式
     kCAAnimationLinear 自定义控制动画的时间（线性）可以设置keyTimes
     kCAAnimationDiscrete 离散动画  没有任何补间动画 使用keytimes@[@0.3,@0.5,@1.0];
     kCAAnimationPaced 节奏动画 自动计算动画的运动时间
     kCAAnimationCubic 曲线动画 需要设置timingFunctions
     timingFunctions：速度控制的数组
     kCAAnimationCubicPaced 节奏曲线动画 自动计算
     */
    animation.calculationMode = kCAAnimationPaced; //动画样式
    /** rotationMode：旋转的样式
     kCAAnimationRotateAuto 自动
     kCAAnimationRotateAutoReverse 自动翻转
     */
    animation.rotationMode = kCAAnimationRotateAutoReverse;//旋转的样式
    [moveView.layer addAnimation:animation forKey:@"animation"];
    
}



@end
