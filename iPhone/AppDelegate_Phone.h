//
//  AppDelegate_Phone.h
//  FunPiano
//
//  Created by Yos Hashimoto on 10/03/20.
//  Copyright Newton Japan Inc. 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KeyViewController_Phone;

@interface AppDelegate_Phone : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    KeyViewController_Phone*   viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet KeyViewController_Phone *viewController;

@end

