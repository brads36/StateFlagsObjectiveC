//
//  StateCollectionViewController.m
//  StateFlagsOBJC
//
//  Created by Bryce Bradshaw on 5/4/20.
//  Copyright © 2020 Bryce Bradshaw. All rights reserved.
//

#import "StateCollectionViewController.h"
#import "StateController.h"
#import "State.h"
#import "StateCollectionViewCell.h"

@interface StateCollectionViewController ()

@end

@implementation StateCollectionViewController

static NSString * const reuseIdentifier = @"stateCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return StateController.sharedInstance.states.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    StateCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    State * state = StateController.sharedInstance.states[indexPath.row];
    cell.state = state;
    
    return cell;
}


@end
