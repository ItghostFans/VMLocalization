//
//  UIGeometry+Localization.h
//  VMLocalization
//
//  Created by ItghostFan on 2024/10/29.
//  Copyright © 2024 ItghostFans. All rights reserved.
//

#import <UIKit/UIGeometry.h>

UIKIT_STATIC_INLINE UIEdgeInsets UIDirectionalEdgesInsetsMake(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right) {
    UIEdgeInsets insets = UIEdgeInsetsZero;
    if ([UIView userInterfaceLayoutDirectionForSemanticContentAttribute:UIView.appearance.semanticContentAttribute] == UIUserInterfaceLayoutDirectionRightToLeft) {
        insets = UIEdgeInsetsMake(top, right, bottom, left);
    } else {
        insets = UIEdgeInsetsMake(top, left, bottom, right);
    }
    return insets;
}
