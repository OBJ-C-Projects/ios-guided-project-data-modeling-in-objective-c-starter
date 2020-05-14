//
//  FGTQuake.h
//  Quakes-Objc
//
//  Created by FGT MAC on 5/14/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FGTQuake : NSObject

//Create readonly because we just need it to represent the JSON from API
@property (nonatomic, readonly, copy) NSString *place;
@property (nonatomic, readonly) NSDate *time;
@property (nonatomic, readonly) double magnitude;
@property (nonatomic, readonly) double latitude;
@property (nonatomic, readonly) double longitude;

- (instancetype)initWithPlace:(NSString *)place
                         time:(NSDate *)time
                    magnitude:(double)magnitude
                     latitude:(double)latitude
                    longitude:(double)longitude;

- (instancetype)initWithDiccionary:(NSDictionary *)diccionary;

@end

NS_ASSUME_NONNULL_END
