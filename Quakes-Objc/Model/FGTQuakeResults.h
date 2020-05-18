//
//  FGTQuakeResults.h
//  Quakes-Objc
//
//  Created by FGT MAC on 5/18/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FGTQuake;

NS_ASSUME_NONNULL_BEGIN

@interface FGTQuakeResults : NSObject

- (instancetype)initWithQuakes:(NSArray<FGTQuake *> *)quakes NS_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithDictionary:(NSDictionary *)dictionary;

@property (nonatomic, readonly, copy) NSArray<FGTQuake *> *quakes;

@end

NS_ASSUME_NONNULL_END
