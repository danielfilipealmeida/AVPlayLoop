//
//  View.h
//  AVPlay
//
//  Created by Daniel Almeida on 14/09/18.
//  Copyright © 2018 Daniel Almeida. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVPlayer.h>

@interface View : NSView {
    AVPlayerLayer *playerLayer;
}

- (void) setPlayer: (AVPlayer *) player;

@end
