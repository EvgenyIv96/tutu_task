//
//  EICity.m
//  tutu
//
//  Created by Евгений Иванов on 23.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import "EICity.h"

#import "EIPoint.h"
#import "EIStation.h"

static NSString *const kCountryTitle = @"countryTitle";
static NSString *const kPoint = @"point";
static NSString *const kDistrictTitle = @"districtTitle";
static NSString *const kCityID = @"cityId";
static NSString *const kCityTitle = @"cityTitle";
static NSString *const kRegionTitle = @"regionTitle";
static NSString *const kStations = @"stations";

@implementation EICity

+ (EKObjectMapping *)objectMapping
{
    return [EKObjectMapping mappingForClass:self withBlock:^(EKObjectMapping *mapping) {
        
        [mapping mapPropertiesFromDictionary:@{
                                               kCountryTitle:@"countryTitle", kDistrictTitle:@"districtTitle",
                                               kCityID:@"cityID", kCityTitle:@"cityTitle",
                                               kRegionTitle:@"regionTitle"
                                               }];
        
        [mapping hasOne:[EIPoint class] forKeyPath:kPoint forProperty:@"point"];
        [mapping hasMany:[EIStation class] forKeyPath:kStations forProperty:@"stations"];
        
    }];
}

@end
