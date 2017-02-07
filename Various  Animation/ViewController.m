//
//  ViewController.m
//  Various  Animation
//
//  Created by 吴曹敏 on 17/2/6.
//  Copyright © 2017年 WCM. All rights reserved.
//

#import "ViewController.h"
#import "BasicAnimationController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) NSMutableArray *titleArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    
    self.titleArray = [NSMutableArray array];
    NSArray *firstArray = @[@"CABasicAnimation基础动画",@"CAKeyframeAnimation基础动画",@"画线动画、线条递增、递减动画",@"CATransition转场动画",@"CASpringAnimation弹簧动画"];
    NSArray *secondArray = @[@"画线动画",@"水波纹效果",@"粒子动画-火苗效果"];
    [self.titleArray addObject:firstArray];
    [self.titleArray addObject:secondArray];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0,screenWidth,screenHeight) style:UITableViewStyleGrouped];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.titleArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSArray *array = self.titleArray[section];
    return array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    NSArray *array = self.titleArray[indexPath.section];
    cell.textLabel.text = array[indexPath.row];
    cell.backgroundColor = [UIColor whiteColor];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 50;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.00001;
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    if (section == 0) {
        return @"动画基础示例";
    }else{
        return @"动画常见经典案例";
    }
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            BasicAnimationController *VC = [[BasicAnimationController alloc] init];
            [self.navigationController pushViewController:VC animated:YES];
        }
    }else{
        
    }
}



@end
