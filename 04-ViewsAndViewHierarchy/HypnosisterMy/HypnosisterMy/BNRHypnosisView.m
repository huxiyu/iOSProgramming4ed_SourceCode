//
//  BNRHypnosisView.m
//  HypnosisterMy
//
//  Created by cadcg on 16/2/7.
//  Copyright © 2016年 hxy. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // All BNRHypnosisViews start with a clear background color
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;
    
    // 根据bounds计算中心点
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height /2.0;
    
    /*
    // 根据视图宽和高中的较小值计算圆形的半径
    float radius = (MIN(bounds.size.width, bounds.size.height) / 2.0);
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    // 以中心点为圆心、radius的值为半径，定义一个0到 M_PI * 2.0 弧度的路径(整圆)
    [path addArcWithCenter:center radius:radius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    */
    
    // 使最外层圆形形成为视图的外接圆
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -=20)
    {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        [path addArcWithCenter:center radius:currentRadius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    }
    
    // 设置线条宽度为10点
    path.lineWidth = 10;
    
    // 设置绘制颜色为浅灰色
    [[UIColor lightGrayColor] setStroke];
    
    // 绘制路径!
    [path stroke];
    
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    // 保存绘图状态
    CGContextSaveGState(currentContext);
    // 绘制阴影
    CGContextSetShadow(currentContext, CGSizeMake(4, 7), 3);
    
    // 绘制带有阴影效果的图像
    UIImage *logoImage = [UIImage imageNamed:@"logo.png"];
    [logoImage drawInRect:rect];
    
    // 关闭阴影
    CGContextRestoreGState(currentContext);
    
    
    
}

@end
