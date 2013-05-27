//
//  AppDelegate_Pad.h
//  FunPiano
//
//  Created by Yos Hashimoto on 10/03/20.
//  Copyright Newton Japan Inc. 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KeyViewController;

@interface AppDelegate_Pad : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    KeyViewController*   viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet KeyViewController *viewController;

@end

