//
//  BNRHypnosisViewController.m
//  HypnoNerdMy
//
//  Created by cadcg on 16/3/20.
//  Copyright © 2016年 hxy. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisViewController

- (void)loadView
{
    // 创建一个BNRHypnosisView对象
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] init];
    
    // 将BNRHypnosisView对象赋给试图控制器的view属性
    self.view = backgroundView;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        
        // 设置标签项的标题
        self.tabBarItem.title = @"Hypnotize";
        
        // 从图像文件创建一个UIImage对象
        // 在Retina显示屏上会加载Hypno@2x.png,而不是Hypno.png
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        
        // 将UIImage对象赋给标签项的image属性
        self.tabBarItem.image = i;
    }
    
    return self;
}

- (void)viewDidLoad
{
    // 必须调用父类的viewDidLoad
    [super viewDidLoad];
    
    NSLog(@"BNRHypnosisViewController loaded its view.");
}

@end
