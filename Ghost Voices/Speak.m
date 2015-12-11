//
//  Speak.m
//  Ghost Voices
//
//  Created by Yannick Weiss on 11/12/15.
//  Copyright © 2015 Yannick Weiss. All rights reserved.
//

#import "Speak.h"


@implementation Speak

- (void)speakString:(NSString *)text {
	SpeechChannel fCurSpeechChannel;
	OSErr theErr = noErr;
	
	// create
	// TODO: use a ghostly voice
	NewSpeechChannel(NULL, &fCurSpeechChannel);
	
	theErr = SpeakCFString(fCurSpeechChannel, (__bridge CFStringRef)text, NULL);
	if (noErr != theErr) {
		NSString *fErrorFormatString = NSLocalizedString(@"Error #%d (0x%0X) returned.", @"Error #%d (0x%0X) returned.");
		NSLog(fErrorFormatString, theErr, theErr);
	}
}

@end