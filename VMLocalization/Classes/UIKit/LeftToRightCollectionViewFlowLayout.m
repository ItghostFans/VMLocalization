//
//  LeftToRightCollectionViewFlowLayout.m
//  VMLocalization
//
//  Created by ItghostFan on 2024/10/31.
//

#import "LeftToRightCollectionViewFlowLayout.h"

@implementation LeftToRightCollectionViewFlowLayout

- (UIUserInterfaceLayoutDirection)developmentLayoutDirection {
    return self.flipsHorizontallyInOppositeLayoutDirection ? UIUserInterfaceLayoutDirectionRightToLeft : UIUserInterfaceLayoutDirectionLeftToRight;
}

- (BOOL)flipsHorizontallyInOppositeLayoutDirection {
    return [UIView userInterfaceLayoutDirectionForSemanticContentAttribute:UIView.appearance.semanticContentAttribute] == UIUserInterfaceLayoutDirectionRightToLeft;
}

@end
