//
//  ViewController.m
//  Quakes-Objc
//
//  Created by Paul Solt on 2/19/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"
#import "FGTFirstResponder.h"
#import "FGTQuakeFetcher.h"
#import "FGTQuake.h"
#import "NSDateInterval+FGTDateInterval.h"



@interface ViewController ()

@property (nonatomic) FGTQuakeFetcher *fetch;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Initialize object
//    FGTFirstResponder *bob = [[FGTFirstResponder alloc] init];
//    
//    bob.name = @"Bob";
//    
//    NSLog(@"%@",bob);
    
    //bob.name = [NSMutableString stringWithFormat:@"Fritz"];
    
    //NSLog(@"%@",bob);
    
//    NSMutableString *name = [NSMutableString stringWithFormat:@"Fritz"];
//    bob.name = name;
//    NSLog(@"%@", bob);
    
    NSDateInterval *dateInterval = [NSDateInterval fgt_dateIntervalByAddingDays:-7];
    [self.fetch fetchQuakesInTimeInterval:dateInterval completionBlock:^(NSArray<FGTQuake *> * _Nonnull quakes, NSError * _Nonnull error) {
        if (error) {
            NSLog(@"Quake fetching error: %@", error);
            return;
        }
        //Todo: print quakes
        
        NSLog(@"Succesfully fetch quakes: %luli", (unsigned long)quakes.count);
    }];

}

//Properties'[p[

//Lazy property to init
- (FGTQuakeFetcher *)fetcher {
    if(!_fetch) {
        _fetch = [[FGTQuakeFetcher alloc] init];
    };
    return _fetch;
}


@end
