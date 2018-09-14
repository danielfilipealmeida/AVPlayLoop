//
//  AppDelegate.m
//  AVPlay
//
//  Created by Daniel Almeida on 14/09/18.
//  Copyright © 2018 Daniel Almeida. All rights reserved.
//

#import "AppDelegate.h"
#import "View.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet View *view;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    videoPath =@"/Users/daniel/XCode/AVPlay/AVPlay/video.mp4";
    NSURL *url = [NSURL URLWithString:videoPath];
    player = [AVPlayer playerWithURL: url];
    
    if ([player error] != nil) {
        NSLog(@"%@", [[player error] description]);
    }
    
    [(View *) _view setPlayer:player];
    [player play];
    
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}




@end
