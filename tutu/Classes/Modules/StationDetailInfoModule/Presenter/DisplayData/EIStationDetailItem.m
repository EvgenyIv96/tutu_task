//
//  EIStationDetailItem.m
//  tutu
//
//  Created by Евгений Иванов on 23.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import "EIStationDetailItem.h"
#import "EICity.h"
#import "EIStation.h"

@implementation EIStationDetailItem

- (instancetype)initWithStation:(EIStation *)station {
    
    self = [super init];
    
    if (self) {
        self.name = station.stationTitle;
        self.countryName = station.city.countryTitle;
        self.cityName = station.city.cityTitle;
        self.districtName = station.city.districtTitle;
        self.regionName = station.city.regionTitle;
        self.ID = [NSString stringWithFormat:@"%ld",(long)station.stationID];
    }
    
    return self;
    
}

@end
