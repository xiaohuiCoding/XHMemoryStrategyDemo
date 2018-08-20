//
//  ViewController.m
//  XHMemoryStrategyDemo
//
//  Created by xiaohui on 2018/8/20.
//  Copyright © 2018年 XIAOHUI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //方法三：
    //在内存警告时候iOS系统会发出 UIApplicationDidReceiveMemoryWarningNotification通知，凡是在通知中心注册了UIApplicationDidReceiveMemoryWarningNotification通知的类(任何类，不限于vc)都会接收到内存警告通知。
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleMemoryWarning) name:UIApplicationDidReceiveMemoryWarningNotification object:nil];
}

- (void)handleMemoryWarning {
    NSLog(@"system notification method execute");
}

//方法二：
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    NSLog(@"vc method 'didReceiveMemoryWarning' execute");
}

@end
