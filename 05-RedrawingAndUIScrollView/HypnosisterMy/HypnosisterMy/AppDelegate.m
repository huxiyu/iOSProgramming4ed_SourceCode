//
//  AppDelegate.m
//  HypnosisterMy
//
//  Created by cadcg on 16/2/6.
//  Copyright © 2016年 hxy. All rights reserved.
//

#import "AppDelegate.h"
#import "BNRHypnosisView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // 生成window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window makeKeyAndVisible];
    
    // 添加控制器
    UIViewController *vc = [[UIViewController alloc] initWithNibName:nil bundle:nil];
    self.window.rootViewController = vc;
    
    /* 1.
    // 创建两个CGRect结构分别作为UIScrollView对象和BNRHypnosisView对象的frame
    CGRect screenRect = self.window.bounds;
    CGRect bigRect = screenRect;
    bigRect.size.width *= 2.0;
    bigRect.size.height *= 2.0;
    
    // 创建一个UIScrollView对象，将其尺寸设置为窗口大小
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    [self.window addSubview:scrollView];
    
    // 创建一个有着超大尺寸的BNRHypnosisView对象并将其加入UIScrollView对象
    BNRHypnosisView *hypnosisView = [[BNRHypnosisView alloc] initWithFrame:bigRect];
    [scrollView addSubview:hypnosisView];
    
    // 告诉UIScrollview对象“取景”范围有多大
    scrollView.contentSize = bigRect.size;
    */
    
    // 2. 拖动和分页
    CGRect screenRect = self.window.bounds;
    CGRect bigRect = screenRect;
    bigRect.size.width *= 2.0;
    
    //创建一个UIScrollView对象，将其尺寸设置为窗口大小
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    [scrollView setPagingEnabled:YES];
    [self.window addSubview:scrollView];
    
    // 创建一个大小与屏幕相同的BNRHypnosisView对象并将其加入UIScrollView对象
    BNRHypnosisView *hypnosisView = [[BNRHypnosisView alloc] initWithFrame:screenRect];
    [scrollView addSubview:hypnosisView];
    
    // 创建第二个大小与屏幕相同的BNRHypnosisView对象并放置在第一个BNRHypnosisView对象的右侧，使其刚好移出屏幕外
    screenRect.origin.x += screenRect.size.width;
    BNRHypnosisView *anotherView = [[BNRHypnosisView alloc] initWithFrame:screenRect];
    [scrollView addSubview:anotherView];
    
    // 告诉UIScrollView对象“取景”范围有多大
    scrollView.contentSize = bigRect.size;
    
    
    // 设置window
    self.window.backgroundColor = [UIColor whiteColor];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
