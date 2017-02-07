//
//  BasicAnimationController.m
//  Various  Animation
//
//  Created by 吴曹敏 on 17/2/6.
//  Copyright © 2017年 WCM. All rights reserved.
//

#import "BasicAnimationController.h"

@interface BasicAnimationController ()

@end

@implementation BasicAnimationController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    /**--------------------旋转动画——————————————————————————————————*/
    //围绕X轴进行旋转
    UIView *rorationViewX = [[UIView alloc] initWithFrame:CGRectMake(20,100, 70, 70)];
    rorationViewX.backgroundColor = [UIColor redColor];
    [self.view addSubview:rorationViewX];
    CABasicAnimation *rorationAnimationX = [CABasicAnimation animationWithKeyPath:@"transform.rotation.x"];
    rorationAnimationX.beginTime = 0;
    rorationAnimationX.toValue = @(2 * M_PI);
    rorationAnimationX.duration = 1.5;
    rorationAnimationX.repeatCount = HUGE_VALF;
    [rorationViewX.layer addAnimation:rorationAnimationX forKey:@"rorationAnimationX"];
    
    //围绕Y轴旋转
    UIView *rorationViewY = [[UIView alloc] initWithFrame:CGRectMake(150, 100, 70, 70)];
    rorationViewY.backgroundColor = [UIColor redColor];
    [self.view addSubview:rorationViewY];
    CABasicAnimation *rorationAnimationY = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
    rorationAnimationY.beginTime = 0;
    rorationAnimationY.toValue = @(M_PI);
    rorationAnimationY.duration = 1.5;
    rorationAnimationY.repeatCount = HUGE_VALF;
    [rorationViewY.layer addAnimation:rorationAnimationY forKey:@"rorationAnimationY"];
    
    //围绕Z轴旋转
    UIView *rorationViewZ = [[UIView alloc] initWithFrame:CGRectMake(280, 100, 70, 70)];
    rorationViewZ.backgroundColor = [UIColor redColor];
    [self.view addSubview:rorationViewZ];
    CABasicAnimation *rorationAnimationZ = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rorationAnimationZ.beginTime = 0;
    rorationAnimationZ.toValue = @(M_PI);
    rorationAnimationZ.duration = 1.5;
    rorationAnimationZ.repeatCount = HUGE_VALF;
    [rorationViewZ.layer addAnimation:rorationAnimationZ forKey:@"rorationAnimationZ"];
    
     /**--------------------移动动画——————————————————————————————————*/
    UIView *moveView = [[UIView alloc] initWithFrame:CGRectMake(20,240, 70, 70)];
    moveView.center = CGPointMake(40,200);
    moveView.backgroundColor = [UIColor redColor];
    [self.view addSubview:moveView];
    CABasicAnimation *moveAnimation = [CABasicAnimation animationWithKeyPath:@"position"];
    moveAnimation.fromValue = [NSValue valueWithCGPoint:CGPointMake(40, 240)];
    moveAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(300,240)];
    moveAnimation.duration = 1.5;
    moveAnimation.repeatCount = HUGE_VALF;
    moveAnimation.autoreverses = YES;
    // 以下两句 控制View动画结束后，停留在动画结束的位置
//    moveAnimation.removedOnCompletion = NO;
//    moveAnimation.fillMode = kCAFillModeForwards;
    [moveView.layer addAnimation:moveAnimation forKey:@"moveAnimation"];
    
    /**--------------------背景颜色变化动画——————————————————————————————————*/
    UIView *colorView = [[UIView alloc] initWithFrame:CGRectMake(20, 310, 70, 70)];
    colorView.backgroundColor = [UIColor redColor];
    [self.view addSubview:colorView];
    CABasicAnimation *colorAnimation = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
    colorAnimation.fromValue = (__bridge id _Nullable)([UIColor redColor].CGColor);
    colorAnimation.toValue = (__bridge id _Nullable)([UIColor greenColor].CGColor);
    colorAnimation.duration = 2;
    colorAnimation.repeatCount = HUGE_VALF;
    colorAnimation.autoreverses = YES;
    [colorView.layer addAnimation:colorAnimation forKey:@"colorAnimation"];
    
    /**--------------------内容变化动画——————————————————————————————————*/
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(150, 310, 70, 70)];
    imageView.image = [UIImage imageNamed:@"from.jpg"];
    [self.view addSubview:imageView];
    CABasicAnimation *imageAnimation = [CABasicAnimation animationWithKeyPath:@"contents"];
    imageAnimation.fromValue = (__bridge id _Nullable)([UIImage imageNamed:@"from.jpg"].CGImage);
    imageAnimation.toValue = (__bridge id _Nullable)([UIImage imageNamed:@"to.jpg"].CGImage);
    imageAnimation.duration = 2;
    imageAnimation.repeatCount = HUGE_VALF;
    [imageView.layer addAnimation:imageAnimation forKey:@"imageAnimation"];
    
    /**--------------------圆角变化动画——————————————————————————————————*/
    UIView *cornerRidusView = [[UIView alloc] initWithFrame:CGRectMake(280, 310, 70, 70)];
    cornerRidusView.backgroundColor = [UIColor redColor];
    cornerRidusView.layer.masksToBounds = YES;//设置可以切割
    [self.view addSubview:cornerRidusView];
    CABasicAnimation *cornerRidusAnimation = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
    cornerRidusAnimation.fromValue = @(0);
    cornerRidusAnimation.toValue = @(35);
    cornerRidusAnimation.duration = 2;
    cornerRidusAnimation.repeatCount = HUGE_VALF;
    cornerRidusAnimation.autoreverses = YES;
    [cornerRidusView.layer addAnimation:cornerRidusAnimation forKey:@"cornerRidusAnimation"];
    
    /**--------------------比例缩放变化动画——————————————————————————————————*/
    UIView *scareView = [[UIView alloc] initWithFrame:CGRectMake(20, 410, 70, 70)];
    scareView.backgroundColor = [UIColor redColor];
    [self.view addSubview:scareView];
    CABasicAnimation *scareAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    scareAnimation.fromValue = @(0.5);
    scareAnimation.toValue = @(1.0);
    scareAnimation.duration = 2.0;
    scareAnimation.repeatCount = HUGE_VALF;
    scareAnimation.autoreverses = YES;
    [scareView.layer addAnimation:scareAnimation forKey:@"scareAnimation"];
    
    /**--------------------比例缩放变化X动画——————————————————————————————————*/
    UIView *scareViewX = [[UIView alloc] initWithFrame:CGRectMake(150, 410, 70, 70)];
    scareViewX.backgroundColor = [UIColor redColor];
    [self.view addSubview:scareViewX];
    CABasicAnimation *scareXAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale.x"];
    scareXAnimation.fromValue = @(0.3);
    scareXAnimation.toValue = @(0.8);
    scareXAnimation.duration = 2.0;
    scareXAnimation.repeatCount = HUGE_VALF;
    scareXAnimation.autoreverses = YES;
    [scareViewX.layer addAnimation:scareXAnimation forKey:@"scareXAnimation"];
    
    /**--------------------比例缩放变化Y动画——————————————————————————————————*/
    UIView *scareViewY = [[UIView alloc] initWithFrame:CGRectMake(280, 410, 70, 70)];
    scareViewY.backgroundColor = [UIColor redColor];
    [self.view addSubview:scareViewY];
    CABasicAnimation *scareYAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale.y"];
    scareYAnimation.fromValue = @(0.3);
    scareYAnimation.toValue = @(0.8);
    scareYAnimation.duration = 2.0;
    scareYAnimation.repeatCount = HUGE_VALF;
    scareYAnimation.autoreverses = YES;
    [scareViewY.layer addAnimation:scareYAnimation forKey:@"scareYAnimation"];
    
    /**--------------------指定大小缩放——————————————————————————————————*/
    UIView *boundsView = [[UIView alloc] initWithFrame:CGRectMake(40, 520, 40, 80)];
    boundsView.backgroundColor = [UIColor redColor];
    [self.view addSubview:boundsView];
    CABasicAnimation *boundsAnimation = [CABasicAnimation animationWithKeyPath:@"bounds"];
    boundsAnimation.toValue = [NSValue valueWithCGRect:CGRectMake(200,550,80,40)];
    boundsAnimation.duration = 2.0;
    boundsAnimation.repeatCount = HUGE_VALF;
    boundsAnimation.autoreverses = YES;
    [boundsView.layer addAnimation:boundsAnimation forKey:@"boundsAnimation"];
    
    /**--------------------透明度变化——————————————————————————————————*/
    UIView *opacityView = [[UIView alloc] initWithFrame:CGRectMake(150,520, 70, 70)];
    opacityView.backgroundColor = [UIColor redColor];
    [self.view addSubview:opacityView];
    CABasicAnimation *opacityAnimation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    opacityAnimation.fromValue = @(0.1);
    opacityAnimation.toValue = @(1.0);
    opacityAnimation.duration = 2.0;
    opacityAnimation.repeatCount = HUGE_VALF;
    opacityAnimation.autoreverses = YES;
    [opacityView.layer addAnimation:opacityAnimation forKey:@"opacityAnimation"];
}



@end
