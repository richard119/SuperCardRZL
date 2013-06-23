//
//  SuperCardViewController.m
//  SuperCardRZL
//
//  Created by Richard on 13-6-23.
//  Copyright (c) 2013年 Richard. All rights reserved.
//

#import "SuperCardViewController.h"
#import "PlayingCardView.h"

@interface SuperCardViewController ()
@property (weak, nonatomic) IBOutlet PlayingCardView *playingCardview;

@end

@implementation SuperCardViewController

- (void)setPlayingCardview:(PlayingCardView *)playingCardview
{
    _playingCardview = playingCardview;
    playingCardview.rank = 13; //K
    playingCardview.suit = @"♥";
}
@end
