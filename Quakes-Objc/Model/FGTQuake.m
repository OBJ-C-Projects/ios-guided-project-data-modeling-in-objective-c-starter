//
//  FGTQuake.m
//  Quakes-Objc
//
//  Created by FGT MAC on 5/14/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "FGTQuake.h"

@implementation FGTQuake

- (instancetype)initWithPlace:(NSString *)place
                         time:(NSDate *)time
                    magnitude:(NSNumber *)magnitude
                     latitude:(double)latitude
                    longitude:(double)longitude{
    self = [super init];
    
    if(self){
        _place = [place copy];
        _time = time;
        _magnitude = magnitude;
        _latitude = latitude;
        _longitude = longitude;
        
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary{

    //JSON levels/layers to get to wnated properties
    NSDictionary *properties = dictionary[@"properties"];
    NSDictionary *geometry = dictionary[@"geometry"];
     NSArray *coordinates = geometry[@"coordinates"];
     
     NSNumber *magnitude = properties[@"mag"];
     NSString *place = properties[@"place"];
     NSNumber *timeNumber = properties[@"time"];
     
     // Longitude is first in array
     NSNumber *longitude; // can crash if we access without checking size
     NSNumber *latitude;

     if (coordinates.count >= 2) {
         longitude = coordinates[0];
         latitude = coordinates[1];
     }
    
    //check if the mag is null as if is optional
    if([magnitude isKindOfClass:[NSNull class]]){
        magnitude = nil;
    }
     
     // nil mag is valid, just N/A (magnitude is optional)
     if ([magnitude isKindOfClass:[NSNull class]]) { // is mag null?
         magnitude = nil;
     }
     
     // failable init (return nil -> failed to set it up)
     if (!place || !timeNumber || !longitude || !latitude) {
         return nil;
     }
     
     // NSTimeInterval = time in seconds
     double timeInMilliseconds = timeNumber.doubleValue;
     NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInMilliseconds / 1000.0];
     
    
    return [self initWithPlace:place time:date magnitude:magnitude latitude:latitude.doubleValue longitude:longitude.doubleValue ];
}


@end
