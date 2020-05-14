//
//  FGTFirstResponder.h
//  Quakes-Objc
//
//  Created by FGT MAC on 5/14/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FGTFirstResponder : NSObject

//Create property
@property (nonatomic, copy) NSString *name;


- (instancetype)initWithName: (NSString *)name;





@end

NS_ASSUME_NONNULL_END
