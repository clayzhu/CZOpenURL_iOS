//
//  CZOpenURL.m
//  Haoban
//
//  Created by ug19 on 16/3/30.
//  Copyright © 2016年 Ugood. All rights reserved.
//

#import "CZOpenURL.h"

@implementation CZOpenURL

+ (void)openURL:(NSString *)urlString {
	NSURL *url = [NSURL URLWithString:urlString];
	if ([[UIApplication sharedApplication] canOpenURL:url]) {
		[[UIApplication sharedApplication] openURL:url];
	}
}

+ (void)telephone:(NSString *)phone {
	[CZOpenURL openURL:[NSString stringWithFormat:@"tel://%@", phone]];
}

+ (void)telephonePrompt:(NSString *)phone {
	[CZOpenURL openURL:[NSString stringWithFormat:@"telprompt://%@", phone]];
}

+ (void)openAppSetting {
	[CZOpenURL openURL:UIApplicationOpenSettingsURLString];
}

+ (void)openWiFiSetting {
	[CZOpenURL openURL:@"prefs:root=WIFI"];
}

+ (void)openAppInAppStore:(NSString *)appID {
	[CZOpenURL openURL:[NSString stringWithFormat:@"itms-apps://itunes.apple.com/app/id%@", appID]];
}

@end
