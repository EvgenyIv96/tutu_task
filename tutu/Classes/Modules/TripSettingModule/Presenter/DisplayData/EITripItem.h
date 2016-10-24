//
//  EITripItem.h
//  tutu
//
//  Created by Евгений Иванов on 24.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EITripItem : NSObject

@property (strong, nonatomic) NSString *fromStationName;
@property (strong, nonatomic) NSString *toStationName;
@property (strong, nonatomic) NSString *dateString;

@end
