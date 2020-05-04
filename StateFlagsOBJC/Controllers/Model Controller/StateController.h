//
//  StateController.h
//  StateFlagsOBJC
//
//  Created by Bryce Bradshaw on 5/4/20.
//  Copyright © 2020 Bryce Bradshaw. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface StateController : NSObject

// MARK: - Shared Instance
+ (StateController *)sharedInstance;

// MARK: - Source of Truth
@property (nonatomic, strong) NSArray *states;

// MARK: - Create States Function
- (NSArray *)createStates;

@end

NS_ASSUME_NONNULL_END
