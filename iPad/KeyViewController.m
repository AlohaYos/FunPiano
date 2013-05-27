//
//  KeyViewController.m
//  FunPiano
//
//  Created by Yos Hashimoto on 10/03/20.
//  Copyright 2010 Newton Japan Inc. All rights reserved.
//

#import "KeyViewController.h"


@implementation KeyViewController

@synthesize keySound, keyBase, revKeyBase, keyTouchView, revKeyTouchView, centerBar;
@synthesize upPrimary, downPrimary, upSecondary, downSecondary;

BOOL isReversed;
BOOL isUpPrimary;
BOOL isUpSecondary;

- (void)viewDidLoad {
	
	centerBar.alpha = 0.0;
	keySound = [[KeySound alloc] init];
	isReversed = NO;
	isUpPrimary = NO;
	isUpSecondary = YES;
	downPrimary.hidden = YES;
	upSecondary.hidden = YES;
}

- (void)dealloc {
	[keySound release];
    [super dealloc];
}

- (void)teachStudent:(int)tag withFlag:(BOOL)flg {
	
	// どの画像を使うかを決定
	NSString *gStr;
	switch (tag % 100) {
		case 0:
		case 5:
			gStr = @"Key1";
			break;
		case 2:
			gStr = @"Key2";
			break;
		case 4:
		case 11:
			gStr = @"Key3";
			break;
		case 7:
			gStr = @"Key4";
			break;
		case 9:
			gStr = @"Key5";
			break;
		case 12:
			gStr = @"Key6";
			break;
		default:
			gStr = @"KeyS";
	}
	
	gStr = [NSString stringWithFormat:@"%@_T.png", gStr];
	
	// 画像を貼り替える
	UIButton *btn;
	int targetTag;
	if(tag < 200) {
		targetTag = tag+100;
		btn = [revKeyBase viewWithTag:targetTag];
	}
	// Secondary側のキーが押された
	else {
		targetTag = tag-100;
		btn = [keyBase viewWithTag:targetTag];
	}
	UIImage *img = nil;
	if(flg==YES)
		img = [UIImage imageNamed:gStr];
	
	[btn setImage:img forState:UIControlStateNormal];
}

- (IBAction)playSound:(id)sender {
	
    // タグを取得して、サウンドを決定する
	int tag = [sender tag];
	if(tag < 200) {
		if(isUpPrimary)
			tag += 100;	// １オクターブ上げる
	}
	else {
		if(!isUpSecondary)
			tag -= 100;	// １オクターブ下げる
	}
	
	[keySound playSound:tag];
	if(isReversed == YES)
		[self teachStudent:[sender tag] withFlag:YES];
}

- (IBAction)playSoundEnd:(id)sender {
	[self teachStudent:[sender tag] withFlag:NO];
}

- (IBAction)reverseKey:(id)sender {
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.5];

	if(isReversed) {
		revKeyBase.transform = CGAffineTransformMakeRotation(-M_PI * 0 / 180.0f);
		centerBar.alpha = 0.0;
		isReversed = NO;
	}
	else{
		revKeyBase.transform = CGAffineTransformMakeRotation(-M_PI * 180 / 180.0f);
		centerBar.alpha = 1.0;
		isReversed = YES;
	}
	[UIView commitAnimations];
}

- (IBAction)upPrimary:(id)sender{
	isUpPrimary = YES;
	upPrimary.hidden = YES;
	downPrimary.hidden = NO;

	CGRect rect = keyTouchView.frame;
	rect.origin.y += 1004;
	keyTouchView.frame = rect;
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.3];
	rect.origin.y -= 1004;
	keyTouchView.frame = rect;
	[UIView commitAnimations];
}

- (IBAction)downPrimary:(id)sender{
	isUpPrimary = NO;
	upPrimary.hidden = NO;
	downPrimary.hidden = YES;
	
	CGRect rect = keyTouchView.frame;
	rect.origin.y -= 1004;
	keyTouchView.frame = rect;
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.3];
	rect.origin.y += 1004;
	keyTouchView.frame = rect;
	[UIView commitAnimations];
}

- (IBAction)upSecondary:(id)sender{
	isUpSecondary = YES;
	upSecondary.hidden = YES;
	downSecondary.hidden = NO;
	
	CGRect rect = revKeyTouchView.frame;
	rect.origin.y += 1004;
	revKeyTouchView.frame = rect;
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.3];
	rect.origin.y -= 1004;
	revKeyTouchView.frame = rect;
	[UIView commitAnimations];
}

- (IBAction)downSecondary:(id)sender{
	isUpSecondary = NO;
	upSecondary.hidden = NO;
	downSecondary.hidden = YES;
	
	CGRect rect = revKeyTouchView.frame;
	rect.origin.y -= 1004;
	revKeyTouchView.frame = rect;
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.3];
	rect.origin.y += 1004;
	revKeyTouchView.frame = rect;
	[UIView commitAnimations];
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


#pragma mark -
#pragma mark Touch handling
/*
// タッチ開始
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch *touch = [touches anyObject];
	NSLog(@"TouchesBegan");
	
	CGPoint point = [touch locationInView:self.view];
	NSLog(@"point(%3.2f,%3.2f)", point.x, point.y);
	

	point = [touch locationInView:keyBase];
	for(int i=0; i < [[keyBase subviews] count]; i++) {
		UIView *sView = [[keyBase subviews] objectAtIndex:i];
		if([sView pointInside:point withEvent:nil]) {
			NSString *desc = [[sView class] description];
			if ([desc compare:@"UIButton"] == NSOrderedSame) {
				NSLog(@"Hit! tag(%d)", [sView tag]);
			}
		}
	}

	point = [touch locationInView:revKeyBase];
	for(int i=0; i < [[[touch view] subviews] count]; i++) {
		UIView *sView = [[revKeyBase subviews] objectAtIndex:i];
		if([sView pointInside:point withEvent:event]) {
			NSString *desc = [[sView class] description];
			if ([desc compare:@"UIButton"] == NSOrderedSame) {
				NSLog(@"Hit! tag(%d)", [sView tag]);
			}
		}
	}
	
}

// タッチしたまま移動
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{  
	UITouch *touch = [touches anyObject];
	CGPoint point = [touch locationInView:[self view]];
	NSLog(@"TouchesMoved");
}

// 放された
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch *touch = [touches anyObject];
	NSLog(@"TouchesEnded");
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
}
*/

@end
