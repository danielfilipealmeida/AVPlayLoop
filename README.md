# AVPlayLoop

## About

A simple example of how to use AVPlayer and AVPlayerLayer do play a looped video on the screen.
What this code does:

 - Opens a video
 - Plays the video on a view
 - Updates the size of the video accoring to the view size
 - forces the looping of the video using a notification

## Notes regarding the looped video

The video was encoded using Quicktime 7 with the setting `Movie to MP4`. The following options where used:

* Video format: MPEG-4 Improved (Perian)
* Data rate: 1000 kbits/sec
* Image size: current
* Frame rate: current
* Key frame: every 1 frames
* No audio
* No Streaming

Using the H.264 or other intensive video codecs is a bad idea because it will produce a short freeze and looping the video.
Also, apparently `mov` containers do not work with the AVPlayer, or atleast it doesn't work my my implementation. No other
containers where tried.

## Credits

All work done by Daniel Almeida: danielf.almeida (at) gmail.com. 

http://danielfilipea.net
