//
//  FGTQuakeFetcher.m
//  Quakes-Objc
//
//  Created by FGT MAC on 5/18/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "FGTQuakeFetcher.h"

static NSString *baseURLString = @"https://earthquake.usgs.gov/fdsnws/event/1/query";

@implementation FGTQuakeFetcher

- (void)fetchQuakesInTimeInterval:(NSDateInterval *)interval completionBlock:(void (^)(NSArray <FGTQuake *> *quakes, NSError *error))completionBlock{
    NSLog(@"Fetch");
    
    //Create query items
    NSURLComponents *urlComponents = [NSURLComponents componentsWithString:baseURLString];
    
    NSISO8601DateFormatter *formatter = [[NSISO8601DateFormatter alloc] init];
    NSString *startTimeString = [formatter stringFromDate:interval.startDate];
    NSString *endTimeString = [formatter stringFromDate:interval.endDate];
    
    //Add the query items to the URL components
    urlComponents.queryItems = @[
        [NSURLQueryItem queryItemWithName:@"format" value:@"geojson"],
         [NSURLQueryItem queryItemWithName:@"starttime" value:startTimeString],
         [NSURLQueryItem queryItemWithName:@"endtime" value:endTimeString],
    ];
    
    NSURL *url = urlComponents.URL;
    //similar to a guard let in swift
    if(!url){
        return;
    };
    
    //Create data task
    NSURLSessionDataTask *task = [NSURLSession.sharedSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"%@", url);
    }];
    
    [task resume];
}

@end
