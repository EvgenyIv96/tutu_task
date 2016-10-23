//
//  EICity.h
//  tutu
//
//  Created by Евгений Иванов on 23.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import "EIBaseModel.h"

@class EIPoint;
@class EIStation;

@interface EICity : EIBaseModel

@property (copy, nonatomic) NSString *countryTitle;
@property (strong, nonatomic) EIPoint *point;
@property (copy, nonatomic) NSString *districtTitle;
@property (assign, nonatomic) NSInteger cityID;
@property (copy, nonatomic) NSString *cityTitle;
@property (copy, nonatomic) NSString *regionTitle;
@property (strong, nonatomic) NSArray *stations;

@end
