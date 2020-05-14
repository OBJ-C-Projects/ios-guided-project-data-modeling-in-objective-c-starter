//
//  ViewController.m
//  Quakes-Objc
//
//  Created by Paul Solt on 2/19/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"
#import "FGTFirstResponder.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Initialize object
    FGTFirstResponder *bob = [[FGTFirstResponder alloc] init];
    
    bob.name = @"Bob";
    
    NSLog(@"%@",bob);
    
    //bob.name = [NSMutableString stringWithFormat:@"Fritz"];
    
    //NSLog(@"%@",bob);

}


@end
