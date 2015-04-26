//
//  SettingsView.m
//  testing swiping
//
//  Created by Richard Kim on 5/22/14.
//  Copyright (c) 2014 Richard Kim. All rights reserved.
//
//  @cwRichardKim for updates and requests

#import "SettingsView.h"

@implementation SettingsView
@synthesize imageView;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    imageView.frame = CGRectMake(50, 50, 100, 100);
}

@end
