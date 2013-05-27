//
//  AppDelegate_Phone.m
//  FunPiano
//
//  Created by Yos Hashimoto on 10/03/20.
//  Copyright Newton Japan Inc. 2010. All rights reserved.
//

#import "AppDelegate_Phone.h"
#import	"KeyViewController_Phone.h"

@implementation AppDelegate_Phone

@synthesize window, viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
	
    // Override point for customization after application launch
	
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
