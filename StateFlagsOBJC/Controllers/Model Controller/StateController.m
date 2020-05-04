//
//  StateController.m
//  StateFlagsOBJC
//
//  Created by Bryce Bradshaw on 5/4/20.
//  Copyright © 2020 Bryce Bradshaw. All rights reserved.
//

#import "StateController.h"
#import "StateHelper.h"
#import "State.h"

@implementation StateController

+ (StateController *)sharedInstance
{
    static StateController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [StateController new];
    });
    
    return sharedInstance;
    
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _states = [self createStates];
    }
    return self;
}

- (NSArray *)createStates
{
    NSMutableArray *statesArrayToReturn = [[NSMutableArray alloc]
                                           init];
    
    for (NSString *stateFullName in [StateHelper states])
    {
        NSInteger index = [[StateHelper states]indexOfObject:stateFullName];
        NSString *abbreviation = [[StateHelper abbreviations]objectAtIndex:index];
        State *state = [[State alloc]initWithName:stateFullName abbreviation:abbreviation];
        [statesArrayToReturn addObject:state];
    }
    
    return statesArrayToReturn;
}


@end
