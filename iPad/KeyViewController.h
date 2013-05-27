//
//  KeyViewController.h
//  FunPiano
//
//  Created by Yos Hashimoto on 10/03/20.
//  Copyright 2010 Newton Japan Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KeySound.h"

@interface KeyViewController : UIViewController {
	
	KeySound		*keySound;
	UIView			*keyBase;
	UIView			*revKeyBase;
	UIView			*keyTouchView;
	UIView			*revKeyTouchView;
	UIImageView		*centerBar;

	UIButton		*upPrimary;
	UIButton		*downPrimary;
	UIButton		*upSecondary;
	UIButton		*downSecondary;
}

@property (nonatomic,retain)			KeySound	*keySound;
@property (nonatomic,retain) IBOutlet	UIView		*keyBase;
@property (nonatomic,retain) IBOutlet	UIView		*revKeyBase;
@property (nonatomic,retain) IBOutlet	UIView		*keyTouchView;
@property (nonatomic,retain) IBOutlet	UIView		*revKeyTouchView;
@property (nonatomic,retain) IBOutlet	UIImageView	*centerBar;
@property (nonatomic,retain) IBOutlet	UIButton	*upPrimary;
@property (nonatomic,retain) IBOutlet	UIButton	*downPrimary;
@property (nonatomic,retain) IBOutlet	UIButton	*upSecondary;
@property (nonatomic,retain) IBOutlet	UIButton	*downSecondary;

- (IBAction)playSound:(id)sender;
- (IBAction)playSoundEnd:(id)sender;

- (IBAction)reverseKey:(id)sender;
- (IBAction)upPrimary:(id)sender;
- (IBAction)downPrimary:(id)sender;
- (IBAction)upSecondary:(id)sender;
- (IBAction)downSecondary:(id)sender;

@end
