//
//  main.m
//  inclass4
//
//  Created by Ryan Alvarado on 2/6/14.
//  Copyright (c) 2014 Ryan Alvarado. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "maids.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        maids *suzy = [[maids alloc] init];
        
        // iOS 6 and below, step 3 "using it"
        [suzy cleanKitchen];
        [suzy billing];
        
        //[suzy setCleaningBill:128];
        //instance.property - value;
        
        suzy.cleaningBill = 130;
        
        
    }
    return 0;
}

