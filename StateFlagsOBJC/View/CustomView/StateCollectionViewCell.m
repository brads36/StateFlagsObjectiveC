//
//  StateCollectionViewCell.m
//  StateFlagsOBJC
//
//  Created by Bryce Bradshaw on 5/4/20.
//  Copyright © 2020 Bryce Bradshaw. All rights reserved.
//

#import "StateCollectionViewCell.h"

@implementation StateCollectionViewCell

- (void) setState:(State *)state
{
    _state = state;
    [self updateWithStates:state];
}

- (void) updateWithStates:(State *)state
{
    if (state)
    {
        _flagImageView.image = [UIImage imageNamed:state.abbreviation];
        _nameLabel.text = state.name;
    }
}

@end
