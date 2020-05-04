//
//  State.m
//  StateFlagsOBJC
//
//  Created by Bryce Bradshaw on 5/4/20.
//  Copyright © 2020 Bryce Bradshaw. All rights reserved.
//

#import "State.h"

@implementation State

- (instancetype)initWithName:(NSString *)name
                abbreviation:(NSString *)abbreviation;
{
    self = [super init];
    if (self)
    {
        _name = name;
        _abbreviation = abbreviation;
    }
    return self;
}

@end
