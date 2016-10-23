//
//  EIStationDetailItem.h
//  tutu
//
//  Created by Евгений Иванов on 23.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EIStation;

@interface EIStationDetailItem : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *countryName;
@property (strong, nonatomic) NSString *cityName;
@property (strong, nonatomic) NSString *districtName;
@property (strong, nonatomic) NSString *regionName;
@property (strong, nonatomic) NSString *ID;

- (instancetype)initWithStation:(EIStation *)station;

@end
