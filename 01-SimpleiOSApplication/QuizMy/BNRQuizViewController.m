//
//  BNRQuizViewController.m
//  QuizMy
//
//  Created by cadcg on 16/2/5.
//  Copyright © 2016年 hxy. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel * questionLabel;
@property (nonatomic, weak) IBOutlet UILabel * answerLabel;

@end

@implementation BNRQuizViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    // 调用父类实现的初始化方法
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self) {
        //创建两个数组对象，存储所需的问题和答案
        //同时，将questions和answers分别指向问题数组和答案数组
        self.questions = @[@"From what is cognac made?",
                           @"What is 7+7?",
                           @"What is the capital of Vermont?"];
        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier"];
    }
    // 返回新对象的地址
    return self;
}

- (IBAction)showQuestion:(id)sender
{
//    NSLog(@"currentQuestionIndex = %d", self.currentQuestionIndex);
    
    // 进入下一个问题
    self.currentQuestionIndex++;

    // 是否已经回答完了所有问题？
    if (self.currentQuestionIndex == [self.questions count])
    {
        // 回到第一个问题
        self.currentQuestionIndex = 0;
    }
    
    // 根据正在回答的问题序号从数组中取出问题字符串
    NSString *question = self.questions[self.currentQuestionIndex];
    
    // 将问题字符串显示在标签上
    self.questionLabel.text = question;
    
    // 重置答案字符串
    self.answerLabel.text = @"？？？";

}

- (IBAction)showAnswer:(id)sender
{
    // 当前问题的答案是什么?
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    // 在答案标签上显示相应的答案
    self.answerLabel.text = answer;
}

@end
