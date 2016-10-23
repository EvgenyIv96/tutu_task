//
//  EIStationsSection.h
//  tutu
//
//  Created by Евгений Иванов on 22.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EIStationsSection : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSArray *stationsArray;

+ (instancetype)stationsSectionWithName:(NSString *)name andStations:(NSArray *)stations;

@end
