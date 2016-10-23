//
//  EIObjectMapper.m
//  tutu
//
//  Created by Евгений Иванов on 23.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import "EIObjectMapper.h"
#import "EICity.h"
#import "EIStation.h"
#import "EIPoint.h"

@implementation EIObjectMapper

- (NSArray *)citiesArrayFromDictArray:(NSArray *)dictArray {
    
    NSMutableArray *citiesArray = [NSMutableArray array];
    
    for (NSDictionary *cityDictionary in dictArray) {
        
        EICity *city = [[EICity alloc] initWithProperties:cityDictionary];
        
        for (EIStation *station in city.stations) {
            
            station.city = city;
            
        }
        
        [citiesArray addObject:city];
        
    }
    
    return [NSArray arrayWithArray:citiesArray];
    
}

@end
