//
//  ViewController.m
//  week14inclass
//
//  Created by Ryan Alvarado on 4/17/14.
//  Copyright (c) 2014 Ryan Alvarado. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    
    NSMutableArray *array;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    array = [[NSMutableArray alloc] init];
    
    [array addObject:@"Apple"];
    [array addObject:@"Is"];
    [array addObject:@"The"];
    [array addObject:@"Bomb"];
    [array addObject:@".com"];
    [array addObject:@":D"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark Collection Views Methods
-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return [array count];
    
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    UILabel *label =  (UILabel *)[cell viewWithTag:100];
    
    label.text = [array objectAtIndex:indexPath.row];
    
    [cell.layer setBorderWidth:2.0f];
    [cell.layer setBorderColor: [UIColor whiteColor].CGColor];
    
    [cell.layer setCornerRadius:50.0f];
    
    return cell;
    
}

@end
