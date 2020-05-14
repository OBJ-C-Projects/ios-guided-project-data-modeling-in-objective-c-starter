//
//  FGTFirstResponder.m
//  Quakes-Objc
//
//  Created by FGT MAC on 5/14/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "FGTFirstResponder.h"

@implementation FGTFirstResponder

- (instancetype)initWithName: (NSString *)name{
    
    //Call the NSObject initializer
    self = [super init];
    
    
    if(self){
        _name = [name copy];
    }
    
    return self;
}

//description = CustomStringConvertible in swift
- (NSString *)description {
    return [NSString stringWithFormat:@"First responder: %@", self.name];
}

@end
