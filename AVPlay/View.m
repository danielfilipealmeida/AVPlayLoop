//
//  View.m
//  AVPlay
//
//  Created by Daniel Almeida on 14/09/18.
//  Copyright © 2018 Daniel Almeida. All rights reserved.
//

#import "View.h"


@implementation View

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    CGContextRef context = (CGContextRef) [[NSGraphicsContext currentContext] graphicsPort];
    
    /*
    CGContextSetRGBFillColor(context, 1, 0, 0, 1);
    CGContextFillRect(context, NSRectToCGRect(dirtyRect));
     */
    /*
    if (playerLayer != nil) {
        [playerLayer setNeedsDisplayInRect:NSRectToCGRect(dirtyRect)];
        [playerLayer drawInContext: context];
    }
     */
    
    
}


- (void) setPlayer: (AVPlayer *) player {
    playerLayer = [AVPlayerLayer playerLayerWithPlayer: player];
    playerLayer.frame = self.bounds;
    [self.layer addSublayer:playerLayer];
    
}


@end
