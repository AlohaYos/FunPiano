    //
//  KeyViewController_Phone.m
//  FunPiano
//
//  Created by Yos Hashimoto on 10/03/21.
//  Copyright 2010 Newton Japan Inc. All rights reserved.
//

#import "KeyViewController_Phone.h"


@implementation KeyViewController_Phone

@synthesize keySound;
//@synthesize keyBase, revKeyBase, keyTouchView, revKeyTouchView;

- (void)viewDidLoad {
	
	keySound = [[KeySound alloc] init];
}

- (void)dealloc {
	[keySound release];
    [super dealloc];
}

- (IBAction)playSound:(id)sender {
	
    // タグを取得して、サウンドを決定する
	int tag = [sender tag];
	
	[keySound playSound:tag];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
    return NO;
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


@end
