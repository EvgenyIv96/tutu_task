//
//  EIStationsListPresenterStateStorage.h
//  tutu
//
//  Created by Евгений Иванов on 23.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EIStation;

@interface EIStationsListPresenterStateStorage : NSObject

@property (strong, nonatomic) NSString *citiesKey;
@property (strong, nonatomic) EIStation *selectedStation;

@end
