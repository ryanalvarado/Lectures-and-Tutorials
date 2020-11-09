//
//  ViewController.h
//  inclass10
//
//  Created by Ryan Alvarado on 3/13/14.
//  Copyright (c) 2014 Ryan Alvarado. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property(nonatomic, strong)NSArray *animals;


@property (weak, nonatomic) IBOutlet UILabel *animalLabel;

@property (weak, nonatomic) IBOutlet UIPickerView *picker;


















@end
