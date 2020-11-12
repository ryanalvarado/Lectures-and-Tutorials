//
//  ViewController.h
//  FileExample-Class10
//
//  Created by Ryan Alvarado on 3/20/14.
//  Copyright (c) 2014 Ryan Alvarado. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textBox;

- (IBAction)saveText:(id)sender;

@end
