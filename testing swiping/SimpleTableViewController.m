//
//  SimpleTableViewController.m
//  testing swiping
//
//  Created by jeremy bader on 6/26/15.
//  Copyright (c) 2015 Richard Kim. All rights reserved.
//

#import "SimpleTableViewController.h"
#import "RestaurantViewController.h"
#import "Restaurant.h"

@interface SimpleTableViewController ()

@end

@implementation SimpleTableViewController

    NSArray *restaurantNames;
    NSArray *restaurantNumbers;
    NSArray *restaurantAddresses;
    NSArray *restaurantImages;

@synthesize tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    restaurantNames = [NSArray arrayWithObjects:@"Uchi", @"Franklin Barbecue", @"Eddie V's Edgewater Grille", @"Whole Foods Market", @"Uchiko", @"Truluck's Seafood", @"Jack Allen's Kitchen", @"Hopdoddy", @"Turf N Surf Po' Boy", @"Moonshine - Patio Bar & Grill", @"Rudy's Country Store & Bar-B-Q", @"Torchy's Tacos", @"Prelog's", @"Fonda San Miguel", @"Home Slice Pizza", @"Pinthouse Pizza", nil];
    
    restaurantImages = [NSArray arrayWithObjects:@"Restaurant1.jpg", @"Restaurant2.jpg", @"Restaurant3.jpg", @"Restaurant4.jpg", @"Restaurant5.jpg", @"Restaurant6.jpg", @"Restaurant7.jpg", @"Restaurant8.jpg", @"Restaurant9.jpg", @"Restaurant10.jpg", @"Restaurant11.jpg", @"Restaurant12.jpg", @"Restaurant13.jpg", @"Restaurant14.jpg", @"Restaurant15.jpg", @"Restaurant16.jpg", nil];
    
    restaurantNumbers = [NSArray arrayWithObjects:@"781-572-6310", @"781-572-6310", @"781-572-6310", @"781-572-6310", @"781-572-6310", @"781-572-6310", @"781-572-6310", @"781-572-6310", @"781-572-6310", @"781-572-6310", @"781-572-6310", @"781-572-6310", @"781-572-6310", @"781-572-6310", @"781-572-6310", @"781-572-6310", nil];
                         
    restaurantAddresses = [NSArray arrayWithObjects:@"6 Washington St. Lexington, MA 02421", @"6 Washington St. Lexington, MA 02421", @"6 Washington St. Lexington, MA 02421", @"6 Washington St. Lexington, MA 02421", @"6 Washington St. Lexington, MA 02421", @"6 Washington St. Lexington, MA 02421", @"6 Washington St. Lexington, MA 02421", @"6 Washington St. Lexington, MA 02421", @"6 Washington St. Lexington, MA 02421", @"6 Washington St. Lexington, MA 02421", @"6 Washington St. Lexington, MA 02421", @"6 Washington St. Lexington, MA 02421", @"6 Washington St. Lexington, MA 02421", @"6 Washington St. Lexington, MA 02421", @"6 Washington St. Lexington, MA 02421", @"6 Washington St. Lexington, MA 02421", nil];
    
    Restaurant *restaurant1 = [Restaurant new];
    restaurant1.name = restaurantNames[0];
    restaurant1.phoneNumber = restaurantNumbers[0];
    restaurant1.address = restaurantNumbers[0];
    restaurant1.imageFile = restaurantImages[0];
    
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [restaurantNames count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [restaurantNames objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[restaurantImages objectAtIndex:indexPath.row]];
    UIImage *image = cell.imageView.image;
    UIImage *tempImage = nil;
    CGSize targetSize = CGSizeMake(250, 187);
    UIGraphicsBeginImageContext(targetSize);
    
    CGRect thumbnailRect = CGRectMake(0, 0, 0, 0);
    thumbnailRect.origin = CGPointMake(0.0,0.0);
    thumbnailRect.size.width  = targetSize.width;
    thumbnailRect.size.height = targetSize.height;
    
    [image drawInRect:thumbnailRect];
    
    tempImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    cell.imageView.image = tempImage;
    return cell;
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

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"ShowRestaurant" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ShowRestaurant"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        RestaurantViewController *destViewController = segue.destinationViewController;
        destViewController.restaurantTitle = [restaurantNames objectAtIndex:indexPath.row];
        destViewController.restaurantName = [restaurantImages objectAtIndex:indexPath.row];
    }
}

@end
