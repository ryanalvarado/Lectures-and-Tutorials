//
//  FlipsideViewController.h
//  ipadPopOver
//
//  Created by Ryan Alvarado on 3/13/14.
//  Copyright (c) 2014 Ryan Alvarado. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController

@property (weak, nonatomic) id <FlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
