//
//  FGTQuakeFetcher.m
//  Quakes-Objc
//
//  Created by FGT MAC on 5/18/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "FGTQuakeFetcher.h"

@implementation FGTQuakeFetcher

- (void)fetchQuakesInTimeInterval:(NSDateInterval *)interval completionBlock:(void (^)(NSArray <FGTQuake *> *quakes, NSError *error))completionBlock{
    NSLog(@"Fetch");
}

@end
