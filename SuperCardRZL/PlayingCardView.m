//
//  PlayingCardView.m
//  SuperCardRZL
//
//  Created by Richard on 13-6-23.
//  Copyright (c) 2013年 Richard. All rights reserved.
//

#import "PlayingCardView.h"

@implementation PlayingCardView


- (void)drawRect:(CGRect)rect
{
 // Drawing code
    UIBezierPath *roundedRect = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:12.0];
    
    [roundedRect addClip];
    
    [[UIColor whiteColor] setFill];
    UIRectFill(self.bounds);
    
    [[UIColor blackColor] setStroke];
    [roundedRect stroke]; 
    
}


-(void)setSuit:(NSString *)suit{
    _suit = suit;
    [self setNeedsDisplay];
}

-(void)setRank:(NSUInteger)rank{
    _rank = rank;
    [self setNeedsDisplay];
}

- (void)setFaceUp:(BOOL)faceUp{
    _faceUp = faceUp;
    [self setNeedsDisplay];
}



#pragma mark - Init
-(void)setup{
    
}

- (void)awakeFromNib{
    [self setup];
}

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    [self setup];
    return  self;
}



@end
