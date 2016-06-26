//
//  ViewController.m
//  Block学习
//
//  Created by Iracle Zhang on 6/12/16.
//  Copyright © 2016 Iracle. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 90, 80, 30);
    [button setTitle:@"下一页" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonTaped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];


}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

- (void)buttonTaped:(UIButton *)sender {
    
    DetailViewController *detailVC = [[DetailViewController alloc] init];
    //4.执行block
    detailVC.passValue = ^(NSString *info, UIColor *color){
        //passValue 被调用时这个代码块被执行
         NSLog(@"%@",info);
        self.view.backgroundColor = color;
        
    };
    [self presentViewController:detailVC animated:YES completion:nil];
    
}


@end







