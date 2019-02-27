//
//  NextController.m
//  RNHybridiOS
//
//  Created by 李洞洞 on 2019/2/26.
//  Copyright © 2019年 李洞洞. All rights reserved.
//

#import "NextController.h"
#import <React/RCTRootView.h>
#import <React/RCTBundleURLProvider.h>
@interface NextController ()

@end

@implementation NextController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
#if 0 //开发环境
    NSURL * jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
#endif
    
#if 1 //正式环境
    NSURL * jsCodeLocation = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"main" ofType:@"jsbundle"]];
#endif
   
    RCTRootView  * welcomeView = [[RCTRootView alloc]initWithBundleURL:jsCodeLocation moduleName:@"Welcome" initialProperties:nil launchOptions:nil];
    
    //[welcomeView cancelTouches];
    welcomeView.frame = self.view.bounds;
    [self.view addSubview:welcomeView];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
/*
  添加更多 React Native 的组件
 在 index.js 文件中, 我们可以添加多个组件以供 iOS 项目调用.
 import {AppRegistry} from 'react-native';
 import App from './App';
 import App2 from './App2';
 import App3 from './App3';
 
 AppRegistry.registerComponent("Welcome", () => App);
 AppRegistry.registerComponent("Welcome2", () => App2);
 AppRegistry.registerComponent("Welcome3", () => App3);
 
 
 在 iOS 项目中指定需要加载的组件名称即可.
 */
@end
