//
//  FGTQuakeResults.m
//  Quakes-Objc
//
//  Created by FGT MAC on 5/18/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "FGTQuakeResults.h"
#import "FGTQuake.h"

@implementation FGTQuakeResults


- (instancetype)initWithQuakes:(NSArray<FGTQuake *> *)quakes
{
    if (self = [super init]) {
        _quakes = quakes.copy;
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    NSArray *quakeDictionaries = [dictionary objectForKey:@"features"];
    if (![quakeDictionaries isKindOfClass:[NSArray class]]) return nil;
    NSMutableArray *quakes = [[NSMutableArray alloc] initWithCapacity:quakeDictionaries.count];
    for (NSDictionary *quakeDictionary in quakeDictionaries) {
        if (![quakeDictionary isKindOfClass:[NSDictionary class]]) continue;
        
        
        FGTQuake *quake = [[FGTQuake alloc] initWithDictionary:quakeDictionary];
        
        
        if (quake) {
            [quakes addObject:quake];
        } else {
            // TODO: One of our "required" fields might be optional and we may need to debug this with real data
            NSLog(@"Unable to parse quake dictionary: %@", quakeDictionary);
        }
    }
    return [self initWithQuakes:quakes];
}


@end
