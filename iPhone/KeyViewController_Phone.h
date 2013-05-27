//
//  KeyViewController_Phone.h
//  FunPiano
//
//  Created by Yos Hashimoto on 10/03/21.
//  Copyright 2010 Newton Japan Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KeySound.h"


@interface KeyViewController_Phone : UIViewController {

	KeySound		*keySound;
}

@property (nonatomic,retain)			KeySound	*keySound;

- (IBAction)playSound:(id)sender;

@end
