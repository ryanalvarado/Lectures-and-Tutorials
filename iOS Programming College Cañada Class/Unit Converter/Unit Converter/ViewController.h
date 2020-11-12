//
//  ViewController.h
//  Unit Converter
//
//  Created by Ryan Alvarado on 3/6/14.
//  Copyright (c) 2014 Ryan Alvarado. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tempText;


@property (weak, nonatomic) IBOutlet UILabel *resultLabel;


{
    double fahrenheit = [_tempText.text double value];
    double celsius = (fahrenheit - 32) / 1.8;
    
    NSString *resultString = [[NSString alloc]
                              initWithFormat: @"Celsis %f", celsius]
                              
                              _resultLabel.text = resultString;


@end
