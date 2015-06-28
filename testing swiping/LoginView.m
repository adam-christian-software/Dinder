//
//  LoginView.h
//  testing swiping
//
//  Created by Richard Kim on 8/23/14.
//  Copyright (c) 2014 Richard Kim. All rights reserved.
//

#import "LoginView.h"

@implementation LoginView

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
