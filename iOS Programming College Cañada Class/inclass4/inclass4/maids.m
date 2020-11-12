//
//  maids.m
//  inclass4
//
//  Created by Ryan Alvarado on 2/6/14.
//  Copyright (c) 2014 Ryan Alvarado. All rights reserved.
//

#import "maids.h"

@implementation maids

@synthesize cleaningBill;

-(void) cleanKitchen {
    NSLog(@"Dang this grease is thick");
}

-(void) billing {
    NSLog(@"$%i", cleaningBill);

}

@end
