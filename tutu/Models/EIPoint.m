//
//  EIPoint.m
//  tutu
//
//  Created by Евгений Иванов on 23.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import "EIPoint.h"

static NSString *const kLongitude = @"longitude";
static NSString *const kLatitude = @"latitude";

@implementation EIPoint

+ (EKObjectMapping *)objectMapping
{
    return [EKObjectMapping mappingForClass:self withBlock:^(EKObjectMapping *mapping) {
        
        [mapping mapPropertiesFromDictionary:@{
                                               kLatitude:@"latitude", kLongitude:@"longitude"
                                               }];
        
    }];
    
}

@end
