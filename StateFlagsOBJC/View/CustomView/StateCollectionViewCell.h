//
//  StateCollectionViewCell.h
//  StateFlagsOBJC
//
//  Created by Bryce Bradshaw on 5/4/20.
//  Copyright © 2020 Bryce Bradshaw. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "State.h"

NS_ASSUME_NONNULL_BEGIN

@interface StateCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong, nonnull) State *state;
@property (weak, nonatomic) IBOutlet UIImageView *flagImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

NS_ASSUME_NONNULL_END
