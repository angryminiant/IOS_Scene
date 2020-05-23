//
//  AppDelegate.m
//  OpenInstall
//
//  Created by hugengya on 2020/5/20.
//  Copyright © 2020 com.hefeichenye. All rights reserved.
//

#import "AppDelegate.h"
#import "OpenInstallSDK2.3.1/OpenInstallSDK.h"

@interface AppDelegate ()<OpenInstallDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [OpenInstallSDK initWithDelegate:self];

    return YES;
}

-(void)getWakeUpParams:(OpeninstallData *)appData{
    if (appData.data) {//(动态唤醒参数)
        //e.g.如免填邀请码建立邀请关系、自动加好友、自动进入某个群组或房间等
    }
    if (appData.channelCode) {//(通过渠道链接或二维码唤醒会返回渠道编号)
        //e.g.可自己统计渠道相关数据等
    }
    
    NSLog(@"OpenInstallSDK拉起回调:\n动态参数：%@;\n渠道编号：%@",appData.data,appData.channelCode);
    
    
    UIAlertController *alertCtrl = [UIAlertController alertControllerWithTitle:@"OpenInstallSDK-唤起" message:[NSString stringWithFormat:@"%@", appData.data] preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    NSLog(@"点击了取消");
    }];
    [alertCtrl addAction:cancelAction];
    
//    [[UIViewController currentVC] presentViewController:alertCtrl animated:YES completion:nil];
    
}

#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}

- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray<id<UIUserActivityRestoring>> * _Nullable))restorationHandler{
    
    if ([OpenInstallSDK continueUserActivity:userActivity]){//如果使用了Universal link ，此方法必写
           return YES;
       }
    return YES;
}

//- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray * _Nullable))restorationHandler{
//
//    if ([OpenInstallSDK continueUserActivity:userActivity]){//如果使用了Universal link ，此方法必写
//           return YES;
//       }
//    return YES;
//}


@end
