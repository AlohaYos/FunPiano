//
//  KeySound.h
//  FunPiano
//
//  Created by Yos Hashimoto on 10/03/21.
//  Copyright 2010 Newton Japan Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>


@interface KeySound : NSObject {
    SystemSoundID   _sound3C;
    SystemSoundID   _sound3CS;
    SystemSoundID   _sound3D;
    SystemSoundID   _sound3DS;
    SystemSoundID   _sound3E;
    SystemSoundID   _sound3F;
    SystemSoundID   _sound3FS;
    SystemSoundID   _sound3G;
    SystemSoundID   _sound3GS;
    SystemSoundID   _sound3A;
    SystemSoundID   _sound3AS;
    SystemSoundID   _sound3B;
    SystemSoundID   _sound4C;
    SystemSoundID   _sound4CS;
    SystemSoundID   _sound4D;
    SystemSoundID   _sound4DS;
    SystemSoundID   _sound4E;
    SystemSoundID   _sound4F;
    SystemSoundID   _sound4FS;
    SystemSoundID   _sound4G;
    SystemSoundID   _sound4GS;
    SystemSoundID   _sound4A;
    SystemSoundID   _sound4AS;
    SystemSoundID   _sound4B;
    SystemSoundID   _sound5C;
	
	
}

- (IBAction)playSound:(int)soundID;

@end
