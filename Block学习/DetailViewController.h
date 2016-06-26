//
//  DetailViewController.h
//  Block学习
//
//  Created by Iracle Zhang on 6/12/16.
//  Copyright © 2016 Iracle. All rights reserved.
//

#import <UIKit/UIKit.h>
//1.定义block类型
 typedef void(^PassValueBlock)(NSString *info, id value);

@interface DetailViewController : UIViewController
//2.声明block属性.（block 执行的时候需要从栈里复制到堆里）
@property (nonatomic, copy) PassValueBlock passValue;

@end










