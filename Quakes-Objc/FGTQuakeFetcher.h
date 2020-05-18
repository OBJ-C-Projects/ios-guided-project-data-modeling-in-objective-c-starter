//
//  FGTQuakeFetcher.h
//  Quakes-Objc
//
//  Created by FGT MAC on 5/18/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

//Foward class declaration
@class FGTQuake;

//Typealias
typedef void (^FGTQuakeFetcherCompletion)(NSArray <FGTQuake *> * _Nullable quakes, NSError * _Nullable error);


NS_ASSUME_NONNULL_BEGIN

@interface FGTQuakeFetcher : NSObject

- (void)fetchQuakesInTimeInterval:(NSDateInterval *)interval completionBlock:(void (^)(NSArray <FGTQuake *> *quakes, NSError *error))completionBlock;


@end

NS_ASSUME_NONNULL_END
