//
//  MASConstraintMaker+Localization.m
//  VMLocalization
//
//  Created by ItghostFan on 2024/10/29.
//  Copyright © 2024 ItghostFans. All rights reserved.
//

#import "MASConstraintMaker+Localization.h"

@interface MASConstraintMaker ()
- (MASConstraint *)addConstraintWithAttributes:(MASAttribute)attrs;
@end

@implementation MASConstraintMaker (Localization)

- (MASConstraint *)directionalEdges {
    return [self addConstraintWithAttributes:MASAttributeTop | MASAttributeLeading | MASAttributeTrailing | MASAttributeBottom];
}

@end
