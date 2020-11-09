//
//  ViewController.m
//  inclass10
//
//  Created by Ryan Alvarado on 3/13/14.
//  Copyright (c) 2014 Ryan Alvarado. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle]pathForResource:@"animals" ofType:@"plist"];
    
    animals = [[NSArray alloc]initWithContentsOfFile:path];
    
    animals = [animals sortedArrayUsingSelector:@selector(compare:)];
    
    animalLabel.text = [animals objectAtIndex:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@synthesize animalLabel, animals, picker;

#pragma mark - UIPickerview Datasource & Delegate Methods

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    
    return 1;
    
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return [animals count];
    
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return animals[row];
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    NSString *selectedAnimal = [animals objectAtIndex:row];
    animalLabel.text = selectedAnimal;
}



@end
