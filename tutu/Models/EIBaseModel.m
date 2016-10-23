//
//  EIBaseModel.m
//  tutu
//
//  Created by Евгений Иванов on 23.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import "EIBaseModel.h"

@implementation EIBaseModel

- (id)initWithProperties:(NSDictionary *)properties
{
    if (self = [super init])
    {
        [EKMapper fillObject:self fromExternalRepresentation:properties
                 withMapping:[[self class] objectMapping]];
    }
    
    return self;
}

+ (EKObjectMapping *)objectMapping
{
    return nil;
}

@end
