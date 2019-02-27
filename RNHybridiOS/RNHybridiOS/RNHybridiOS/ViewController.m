//
//  ViewController.m
//  RNHybridiOS
//
//  Created by 李洞洞 on 2019/2/26.
//  Copyright © 2019年 李洞洞. All rights reserved.
//

#import "ViewController.h"
#import "NextController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];

}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NextController * detailVc = [[NextController alloc]init];
    
    [self presentViewController:detailVc animated:YES completion:nil];
}

@end
