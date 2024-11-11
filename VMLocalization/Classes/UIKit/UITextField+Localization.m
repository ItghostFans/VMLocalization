//
//  UITextField+Localization.m
//  VMLocalization
//
//  Created by ItghostFan on 2024/10/29.
//

#import "UITextField+Localization.h"

#import <objc/runtime.h>

@implementation UITextField (Localization)

- (void)setFlipsTextAlignment:(BOOL)flipsTextAlignment {
    objc_setAssociatedObject(self, @selector(flipsTextAlignment), @(flipsTextAlignment), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    if ([UIView userInterfaceLayoutDirectionForSemanticContentAttribute:UIView.appearance.semanticContentAttribute] == UIUserInterfaceLayoutDirectionRightToLeft) {
        self.textAlignment = NSTextAlignmentRight;
    } else {
        self.textAlignment = NSTextAlignmentLeft;
    }
}

- (BOOL)flipsTextAlignment {
    return [objc_getAssociatedObject(self, @selector(flipsTextAlignment)) boolValue];
}

@end
