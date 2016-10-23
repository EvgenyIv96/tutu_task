//
//  EIStation.h
//  tutu
//
//  Created by Евгений Иванов on 23.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import "EIBaseModel.h"

@class EICity;

@interface EIStation : EIBaseModel

@property (strong, nonatomic) EICity *city;

@property (assign, nonatomic) NSInteger stationID;
@property (copy, nonatomic) NSString *stationTitle;

@end
