//
//  FGTQuakeTest.m
//  Quakes-ObjcTests
//
//  Created by FGT MAC on 5/14/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
//Import Objects to be tested
#import "LSIFileHelper.h"
#import "LSILog.h"
#import "FGTQuake.h"



@interface FGTQuakeTest : XCTestCase

@end

@implementation FGTQuakeTest

- (void)testQuakeParsing {
    
    NSData *quakeData = loadFile(@"Quake.json", [FGTQuakeTest class]);
    NSLog(@"quake: %@", quakeData);
    
    NSError *jsonError = nil;
    NSDictionary *quakeDictionary = [NSJSONSerialization JSONObjectWithData:quakeData options:0 error:&jsonError];
    if (jsonError) {
        NSLog(@"JSON Parsing error: %@", jsonError);
    }
    
    // Parse the dictionary and turn it into a Quake object
    NSLog(@"JSON: %@", quakeDictionary);
    
    NSDate *time = [NSDate dateWithTimeIntervalSince1970:1388620296020 / 1000.0];
    FGTQuake *quake = [[FGTQuake alloc] initWithDiccionary:quakeDictionary];
    
    NSLog(@"quake: %@", quake);
    
    //XCTAssertNil(quake.magnitude);
//    XCTAssertEqualWithAccuracy(1.29, quake.magnitude, 0.0001);
    
    XCTAssertEqualObjects(@"10km SSW of Idyllwild, CA", quake.place);
    XCTAssertEqualObjects(time, quake.time);
    
    XCTAssertEqualWithAccuracy(33.663333299999998, quake.latitude, 0.0001);
    XCTAssertEqualWithAccuracy(-116.7776667, quake.longitude, 0.0001);
}

@end
