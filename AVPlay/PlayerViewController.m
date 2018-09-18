//
//  PlayerViewController.m
//  AVPlay
//
//  Created by Daniel Almeida on 14/09/18.
//  Copyright © 2018 Daniel Almeida. All rights reserved.
//

#import "PlayerViewController.h"

@interface PlayerViewController ()
@end

@implementation PlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setBlackBackground];
    
    url = [[NSBundle mainBundle] URLForResource:@"video" withExtension:@"mp4"];
    player = [self newPlayerForURL: url];
    layer = [self newPlayerLayerForPlayer: player];
    
    [self setupVideoEndNotification];
    
    [player play];
}

- (void)viewWillLayout {
    [self setLayerSizeForLayer: layer];
}

- (void) setLayerSizeForLayer: (AVPlayerLayer *) theLayer
{
    theLayer.frame = self.view.bounds;
}

- (void) setBlackBackground
{
    CGFloat components[4];
    components[0] = 0.0;
    components[1] = 0.0;
    components[2] = 0.0;
    components[3] = 1.0;
    self.view.layer.backgroundColor = CGColorCreate(CGColorSpaceCreateDeviceRGB(),components);
}

- (AVPlayer *) newPlayerForURL: (NSURL*) _url
{
    AVPlayer* newPlayer = [AVPlayer playerWithURL: _url];
    [newPlayer setMuted:YES];
    
    return newPlayer;
}

- (AVPlayerLayer *) newPlayerLayerForPlayer: (AVPlayer *) thePlayer {
    AVPlayerLayer* newLayer = [AVPlayerLayer playerLayerWithPlayer: thePlayer];
    
    [self setLayerSizeForLayer: newLayer];
    [self.view.layer addSublayer:newLayer];
    
    return newLayer;
}

- (void) setupVideoEndNotification {
    player.actionAtItemEnd = AVPlayerActionAtItemEndNone;
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(playerItemDidReachEnd:)
                                                 name:AVPlayerItemDidPlayToEndTimeNotification
                                               object:[player currentItem]];
}

- (void)playerItemDidReachEnd:(NSNotification *)notification {
    AVPlayerItem *playerItem = [notification object];
    [playerItem seekToTime:kCMTimeZero];
}


@end
