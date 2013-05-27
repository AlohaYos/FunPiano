//
//  AppDelegate_Pad.m
//  FunPiano
//
//  Created by Yos Hashimoto on 10/03/20.
//  Copyright Newton Japan Inc. 2010. All rights reserved.
//

#import "AppDelegate_Pad.h"
#import "KeyViewController.h"

@implementation AppDelegate_Pad

@synthesize window, viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
/*
	// ステータスバーを上にする
    [UIApplication sharedApplication].statusBarOrientation = UIInterfaceOrientationLandscapeRight;
	
    // アプリケーションの表示フレームを取得する
    CGRect  frame;
    frame = [UIScreen mainScreen].applicationFrame;
    
    // 中心位置を作成
    CGPoint center;
    center.x = CGRectGetWidth(frame) * 0.5f;
    center.y = CGRectGetHeight(frame) * 0.5f;
    
    // バウンズを作成
    CGRect  bounds;
    bounds.origin = CGPointZero;
    bounds.size.width = CGRectGetHeight(frame);
    bounds.size.height = CGRectGetWidth(frame);
    
    // アフィン変換を作成
    CGAffineTransform   transform;
    transform = CGAffineTransformMakeRotation(M_PI_2);
    
    // ビューを回転させる
    viewController.view.center = center;
    viewController.view.bounds = bounds;
    viewController.view.transform = transform;
*/
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
