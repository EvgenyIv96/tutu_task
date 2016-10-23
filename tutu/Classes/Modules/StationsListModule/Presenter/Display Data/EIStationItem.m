//
//  EIStationItem.m
//  tutu
//
//  Created by Евгений Иванов on 22.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import "EIStationItem.h"

@implementation EIStationItem

+ (instancetype)stationItemWithName:(NSString *)name country:(NSString *)country district:(NSString *)district city:(NSString *)city andRegion:(NSString *)region {
    
    EIStationItem *station = [[EIStationItem alloc] init];
    
    station.name = name;
    station.country = country;
    station.district = district;
    station.city = city;
    station.region = region;
    
    return station;
}

@end
