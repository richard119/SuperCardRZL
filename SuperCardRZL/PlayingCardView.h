//
//  PlayingCardView.h
//  SuperCardRZL
//
//  Created by Richard on 13-6-23.
//  Copyright (c) 2013年 Richard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView
@property (nonatomic) NSUInteger rank;
@property (strong,nonatomic) NSString *suit;

@property (nonatomic) BOOL faceUp;

@end
