//
//  SuperCardViewController.m
//  SuperCardRZL
//
//  Created by Richard on 13-6-23.
//  Copyright (c) 2013年 Richard. All rights reserved.
//

#import "SuperCardViewController.h"
#import "PlayingCardView.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@interface SuperCardViewController ()
@property (weak, nonatomic) IBOutlet PlayingCardView *playingCardview;
@property (strong,nonatomic) Deck *deck;
@end

@implementation SuperCardViewController

-(Deck *)deck
{
    if(!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (void)setPlayingCardview:(PlayingCardView *)playingCardview
{
    _playingCardview = playingCardview;
    [self drawRandomPlayingCard];
    [playingCardview addGestureRecognizer:[[UIPinchGestureRecognizer alloc] initWithTarget:playingCardview action:@selector(pinch:)]];
    
}

- (void)drawRandomPlayingCard
{
    Card *card = [self.deck drawRandomCard];
    if ([card isKindOfClass:[PlayingCard class]]) {
        PlayingCard *playcard = (PlayingCard *)card;
        self.playingCardview.rank = playcard.rank;
        self.playingCardview.suit = playcard.suit;
    }
}

- (IBAction)swipe:(UISwipeGestureRecognizer *)sender {
    [UIView transitionWithView:self.playingCardview duration:0.5
                       options:UIViewAnimationOptionTransitionFlipFromLeft
                       animations:^{
                           if (!self.playingCardview.faceUp) [self drawRandomPlayingCard];
                           self.playingCardview.faceUp = !self.playingCardview.faceUp;
                       }completion:NULL];
    
//    self.playingCardview.faceUp = !self.playingCardview.faceUp;
}
@end
