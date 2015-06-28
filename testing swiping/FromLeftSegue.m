//
//  FromLeftSegue.m
//  testing swiping
//
//  Created by jeremy bader on 5/21/15.
//  Copyright (c) 2015 Richard Kim. All rights reserved.
//

#import "FromLeftSegue.h"
#import "QuartzCore/QuartzCore.h"

@implementation FromLeftSegue

-(void)perform {
    
    UIViewController *sourceViewController = (UIViewController*)[self sourceViewController];
    UIViewController *destinationController = (UIViewController*)[self destinationViewController];
    
    CATransition* transition = [CATransition animation];
    transition.duration = .25;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromLeft;
    
    NSString *title = sourceViewController.title;
    NSString *title2 = destinationController.title;
    NSLog(@"Perform Left Segue transtition from %@ to %@", title, title2);
    
    [sourceViewController.navigationController.view.layer addAnimation:transition
                                                                forKey:kCATransition];
    
    [sourceViewController.navigationController pushViewController:destinationController animated:NO];
    
}

@end
