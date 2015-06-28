//
//  SignUpView.m
//  testing swiping
//
//  Created by Kamau Vassall on 6/28/15.
//  Copyright (c) 2015 Richard Kim. All rights reserved.
//

#import "SignUpView.h"

@implementation SignUpView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [super layoutSubviews];
        [self setupView];
    }
    return self;
}

//%%% sets up the extra buttons on the screen
-(void)setupView
{
    //the gray background colors
    self.backgroundColor = [UIColor colorWithRed:.92 green:.93 blue:.95 alpha:1];
}

@end
