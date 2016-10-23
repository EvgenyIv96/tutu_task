//
//  EIStationsSection.m
//  tutu
//
//  Created by Евгений Иванов on 22.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import "EIStationsSection.h"

@implementation EIStationsSection

+ (instancetype)stationsSectionWithName:(NSString *)name andStations:(NSArray *)stations {
    
    EIStationsSection *section = [[EIStationsSection alloc] init];
    
    section.name = name;
    section.stationsArray = stations;
    
    return section;
    
}

@end
