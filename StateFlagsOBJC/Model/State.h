//
//  State.h
//  StateFlagsOBJC
//
//  Created by Bryce Bradshaw on 5/4/20.
//  Copyright © 2020 Bryce Bradshaw. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface State : NSObject

@property (nonatomic, copy) NSString *abbreviation;
@property (nonatomic, copy) NSString *name;

- (instancetype) initWithName:(NSString *)name
                 abbreviation:(NSString *)abbreviation;


@end

NS_ASSUME_NONNULL_END
