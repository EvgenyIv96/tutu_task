//
//  EIStation.m
//  tutu
//
//  Created by Евгений Иванов on 23.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import "EIStation.h"

static NSString *const kStationID = @"stationId";
static NSString *const kStationTitle = @"stationTitle";

@implementation EIStation

+ (EKObjectMapping *)objectMapping
{
    
    return [EKObjectMapping mappingForClass:self withBlock:^(EKObjectMapping *mapping) {
        
        [mapping mapPropertiesFromDictionary:@{
                                               kStationID:@"stationID", kStationTitle:@"stationTitle"
                                               }];
        
    }];
    
}

@end
