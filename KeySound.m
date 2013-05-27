//
//  KeySound.m
//  FunPiano
//
//  Created by Yos Hashimoto on 10/03/21.
//  Copyright 2010 Newton Japan Inc. All rights reserved.
//

#import "KeySound.h"


@implementation KeySound

- (id)init {
	
	[super init];
	
    // サウンドを読み込む
    NSURL*  url;
    
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-3C" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound3C);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-3Cs" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound3CS);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-3D" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound3D);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-3Ds" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound3DS);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-3E" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound3E);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-3F" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound3F);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-3Fs" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound3FS);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-3G" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound3G);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-3Gs" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound3GS);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-3A" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound3A);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-3As" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound3AS);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-3B" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound3B);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-4C" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound4C);
	
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-4Cs" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound4CS);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-4D" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound4D);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-4Ds" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound4DS);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-4E" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound4E);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-4F" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound4F);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-4Fs" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound4FS);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-4G" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound4G);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-4Gs" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound4GS);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-4A" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound4A);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-4As" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound4AS);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-4B" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound4B);
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Piano-5C" ofType:@"aif"]];
    AudioServicesCreateSystemSoundID((CFURLRef)url, &_sound5C);

	return self;
}


- (void)dealloc {
    // サウンドを破棄する
    AudioServicesDisposeSystemSoundID(_sound3C);
    AudioServicesDisposeSystemSoundID(_sound3CS);
    AudioServicesDisposeSystemSoundID(_sound3D);
    AudioServicesDisposeSystemSoundID(_sound3DS);
    AudioServicesDisposeSystemSoundID(_sound3E);
    AudioServicesDisposeSystemSoundID(_sound3F);
    AudioServicesDisposeSystemSoundID(_sound3FS);
    AudioServicesDisposeSystemSoundID(_sound3G);
    AudioServicesDisposeSystemSoundID(_sound3GS);
    AudioServicesDisposeSystemSoundID(_sound3A);
    AudioServicesDisposeSystemSoundID(_sound3AS);
    AudioServicesDisposeSystemSoundID(_sound3B);
    AudioServicesDisposeSystemSoundID(_sound4C);
    AudioServicesDisposeSystemSoundID(_sound4CS);
    AudioServicesDisposeSystemSoundID(_sound4D);
    AudioServicesDisposeSystemSoundID(_sound4DS);
    AudioServicesDisposeSystemSoundID(_sound4E);
    AudioServicesDisposeSystemSoundID(_sound4F);
    AudioServicesDisposeSystemSoundID(_sound4FS);
    AudioServicesDisposeSystemSoundID(_sound4G);
    AudioServicesDisposeSystemSoundID(_sound4GS);
    AudioServicesDisposeSystemSoundID(_sound4A);
    AudioServicesDisposeSystemSoundID(_sound4AS);
    AudioServicesDisposeSystemSoundID(_sound4B);
    AudioServicesDisposeSystemSoundID(_sound5C);
    
    [super dealloc];
}

- (void)playSound:(int)soundID {
    // タグを取得して、サウンドを決定する
    SystemSoundID   sound = (SystemSoundID)NULL;
    switch (soundID) {
		case 100: sound = _sound3C;  break;
		case 101: sound = _sound3CS; break;
		case 102: sound = _sound3D;  break;
		case 103: sound = _sound3DS; break;
		case 104: sound = _sound3E;  break;
		case 105: sound = _sound3F;  break;
		case 106: sound = _sound3FS; break;
		case 107: sound = _sound3G;  break;
		case 108: sound = _sound3GS; break;
		case 109: sound = _sound3A;  break;
		case 110: sound = _sound3AS; break;
		case 111: sound = _sound3B;  break;
		case 112: sound = _sound4C;  break;
			
		case 200: sound = _sound4C;  break;
		case 201: sound = _sound4CS; break;
		case 202: sound = _sound4D;  break;
		case 203: sound = _sound4DS; break;
		case 204: sound = _sound4E;  break;
		case 205: sound = _sound4F;  break;
		case 206: sound = _sound4FS; break;
		case 207: sound = _sound4G;  break;
		case 208: sound = _sound4GS; break;
		case 209: sound = _sound4A;  break;
		case 210: sound = _sound4AS; break;
		case 211: sound = _sound4B;  break;
		case 212: sound = _sound5C;  break;
	}
    
    // サウンドを鳴らす
    if (sound) {
        //AudioServicesPlayAlertSound(sound);
        AudioServicesPlaySystemSound(sound);
    }
}



@end
