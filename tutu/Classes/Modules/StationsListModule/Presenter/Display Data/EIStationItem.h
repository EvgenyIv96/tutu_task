//
//  EIStationItem.h
//  tutu
//
//  Created by Евгений Иванов on 22.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EIStationItem : NSObject

@property (nonatomic, copy) NSString *country;
@property (nonatomic, copy) NSString *district;
@property (nonatomic, copy) NSString *city;
@property (nonatomic, copy) NSString *region;
@property (nonatomic, copy) NSString *name;

+ (instancetype)stationItemWithName:(NSString *)name country:(NSString *)country district:(NSString *)district city:(NSString *)city andRegion:(NSString *)region;

@end
