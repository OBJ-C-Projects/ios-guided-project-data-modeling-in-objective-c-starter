//
//  LSIQuake.h
//  Quakes-Objc
//
//  Created by Paul Solt on 5/13/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIQuake : NSObject

// Create the properties (types, attributes)
// primitive or objects

@property (nonatomic, readonly, nullable) NSNumber *magnitude; // use object for optionality
@property (nonatomic, readonly, copy) NSString *place;
@property (nonatomic, readonly) NSDate *time;
@property (nonatomic, readonly) double latitude;
@property (nonatomic, readonly) double longitude;

- (instancetype)initWithMagnitude:(NSNumber *)magnitude
                            place:(NSString *)place
                             time:(NSDate *)time
                         latitude:(double)latitude
                        longitude:(double)longitude;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
