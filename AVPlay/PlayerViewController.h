//
//  PlayerViewController.h
//  AVPlay
//
//  Created by Daniel Almeida on 14/09/18.
//  Copyright © 2018 Daniel Almeida. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVPlayer.h>

@interface PlayerViewController : NSViewController {
    NSURL *url;
    AVPlayerLayer *layer;
    AVPlayer *player;
}

/*!
 Sets the background to black
 */
- (void) setBlackBackground;

/*!
 Sets the size of a layer to be the same as the view
 
 @param theLayer the `AVPlayerLayer` to update the size
 */
- (void) setLayerSizeForLayer: (AVPlayerLayer *) theLayer;

/*!
 Sets up the video layer for a video in a given url
 
 @param url the url of the video
 */
- (AVPlayer *) newPlayerForURL: (NSURL*) url;

/*!
 Sets up an player layer for a given player.
 
 Does the following:
    - create a player layer from a player
    - sets it's size
    - adds the player layer to the view
 
 @param thePlayer the `player` to add to the `player layer`
 */
- (AVPlayerLayer *) newPlayerLayerForPlayer: (AVPlayer *) thePlayer;

/*!
 Setups up a notification to be triggered when the video reaches the end 
 
 This is needed to make the video to loop
 */
- (void) setupVideoEndNotification;

/*!
 Method to be executed when `AVPlayerItemDidPlayToEndTimeNotification`is triggered
 on the player
 */
- (void)playerItemDidReachEnd:(NSNotification *)notification;
@end
