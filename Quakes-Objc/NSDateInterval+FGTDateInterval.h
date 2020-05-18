//
//  NSDateInterval+FGTDateInterval.h
//  Quakes-Objc
//
//  Created by FGT MAC on 5/18/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDateInterval (FGTDateInterval)

//Declaring methods
// + equal class method
//In case apple would come out with a convinience initializer with the
//same naming as ours in the future we better add a prefix to the method name
//THis is only for classes that we did not created/
+ (instancetype)fgt_dateIntervalByAddingDays:(NSInteger)days;
+ (instancetype)fgt_dateIntervalByAddingDays:(NSInteger)days toDate:(NSDate *)date;


@end

NS_ASSUME_NONNULL_END
