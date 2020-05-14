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
                    magnitude:(double)magnitude
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

- (instancetype)initWithDiccionary:(NSDictionary *)diccionary{
//    self = [super init]
//    if(self){
//
//    }
    return nil;
}


@end
