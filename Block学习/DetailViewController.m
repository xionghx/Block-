//
//  DetailViewController.m
//  Block学习
//
//  Created by Iracle Zhang on 6/12/16.
//  Copyright © 2016 Iracle. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    
    //3.调用block
    self.passValue(@"6666666", [UIColor redColor]);
    
}




@end






