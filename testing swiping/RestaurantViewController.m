//
//  RestaurantViewController.m
//  testing swiping
//
//  Created by jeremy bader on 6/28/15.
//  Copyright (c) 2015 Richard Kim. All rights reserved.
//

#import "RestaurantViewController.h"

@interface RestaurantViewController ()

@end

@implementation RestaurantViewController

@synthesize restaurantLabel;
@synthesize restaurantTitle;
@synthesize restaurantPicture;
@synthesize restaurantName;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    restaurantLabel.text = restaurantTitle;
    restaurantPicture.image = [UIImage imageNamed: restaurantName];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (IBAction)unwindFromLeft:(UIStoryboardSegue*)sender
{
    UIViewController *sourceViewController = sender.sourceViewController;
    
    // Pull any data from the view controller which initiated the unwind segue.
    CATransition* transition = [CATransition animation];
    transition.duration = .25;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromLeft;
    
    [sourceViewController.navigationController.view.layer addAnimation:transition
                                                                forKey:kCATransition];
}

- (IBAction)unwindFromRight:(UIStoryboardSegue*)sender
{
    UIViewController *sourceViewController = sender.sourceViewController;
    
    // Pull any data from the view controller which initiated the unwind segue.
    CATransition* transition = [CATransition animation];
    transition.duration = .25;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromRight;
    
    [sourceViewController.navigationController.view.layer addAnimation:transition
                                                                forKey:kCATransition];
}

-(void)setTitle:(NSString*)restaurantName
{
    NSLog(@"This is the %@", restaurantName);
}

-(void)setPicture:(NSString*)restaurantImage
{
    NSLog(@"This is the %@", restaurantImage);
}

@end
