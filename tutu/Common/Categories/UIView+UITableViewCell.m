//
//  UIView+UITableViewCell.m
//  tutu
//
//  Created by Евгений Иванов on 23.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import "UIView+UITableViewCell.h"

@implementation UIView (UITableViewCell)

- (UITableViewCell *)superUITableViewCell {
    
    if ([self isKindOfClass:[UITableViewCell class]]) {
        return (UITableViewCell *)self;
    }
    
    if(!self.superview) {
        return nil;
    }
    
    return [self.superview superUITableViewCell];
    
}

@end
