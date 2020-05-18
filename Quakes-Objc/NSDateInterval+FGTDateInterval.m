//
//  NSDateInterval+FGTDateInterval.m
//  Quakes-Objc
//
//  Created by FGT MAC on 5/18/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "NSDateInterval+FGTDateInterval.h"

@implementation NSDateInterval (FGTDateInterval)

//Creates a date interval relative to current date
+ (instancetype)fgt_dateIntervalByAddingDays:(NSInteger)days{
    return [self fgt_dateIntervalByAddingDays:days toDate:[NSDate date]];
};


+ (instancetype)fgt_dateIntervalByAddingDays:(NSInteger)days toDate:(NSDate *)date{
    NSDate *startDate = nil;
    NSDate *endDate = nil;
    
    if (days < 0){
        endDate = date;
        startDate = [NSCalendar.currentCalendar dateByAddingUnit:NSCalendarUnitDay value:days toDate:date options:0];
    }else{
        startDate = date;
        endDate = [NSCalendar.currentCalendar dateByAddingUnit:NSCalendarUnitDay value:days toDate:date options:0];
        
    }
    return  [[NSDateInterval alloc] initWithStartDate:startDate endDate:endDate];
};


@end
