//
//  BNRReminderViewController.m
//  HypnoNerdMy
//
//  Created by cadcg on 16/3/20.
//  Copyright © 2016年 hxy. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;

@end

@implementation BNRReminderViewController

- (IBAction)addReminder:(id)sender
{
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
    
    // 添加本地通知
    UILocalNotification *note = [[UILocalNotification alloc] init];
    // 设置通知的内容
    note.alertBody = @"Hypnotize me!";
    // 设置通知发出的时间
//    note.fireDate = [NSDate dateWithTimeIntervalSinceNow:20]; //20秒后
    note.fireDate = date;
    //设置提醒的声音，可以自己添加声音文件，这里设置为默认提示声
    note.soundName = UILocalNotificationDefaultSoundName;
    //设置应用程序图标右上角的数字
    note.applicationIconBadgeNumber = 999;
    
    //在规定的日期触发通知
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
    //马上触发
//    [[UIApplication sharedApplication] presentLocalNotificationNow:note];
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle: nibBundleOrNil ];
    
    if (self) {
        // 获取tabBarItem属性所指向的UITabBarItem对象
        UITabBarItem *tbi = self.tabBarItem;
        
        // 设置UITabBarItem对象的标题
        tbi.title = @"Reminder";
        
        // 设置UITabBarItem对象的图像
        UIImage *i = [UIImage imageNamed:@"Time.png"];
        tbi.image = i;
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"BNRReminderViewController loaded its view.");
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
}

@end
