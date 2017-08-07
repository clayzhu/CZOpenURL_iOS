//
//  CZOpenURL.h
//  Haoban
//
//  Created by ug19 on 16/3/30.
//  Copyright © 2016年 Ugood. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CZOpenURL : NSObject

/** 调用系统的 openURL: */
+ (void)openURL:(NSString *)urlString;
/** 直接拨打电话（在 iOS 10.3 以上的系统中，该方法也会先弹出提示） */
+ (void)telephone:(NSString *)phone;
/** 先弹出提示，点确定拨打电话 */
+ (void)telephonePrompt:(NSString *)phone;
/** 打开本应用的系统设置 */
+ (void)openAppSetting;
/** 打开 WiFi 系统设置 */
+ (void)openWiFiSetting;
/** 打开某个应用的 App Store 页 */
+ (void)openAppInAppStore:(NSString *)appID;

@end
