//
//  TripSettingModuleRouterInput.h
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol StationsListModuleModuleOutput;
@protocol DatePickModuleModuleOutput;

@protocol TripSettingModuleRouterInput <NSObject>

/**
 @author Evgeny Ivanov
 
 Method is used to initiate transition to the StationListModule
 
 @param citiesKey NSString string key for cities from data base
 */
- (void)openStationListModuleWithCitiesKey:(NSString *)citiesKey moduleOutput:(id<StationsListModuleModuleOutput>)moduleOutput;

/**
 @author Evgeny Ivanov
 
 Method is used to initiate transition to the DatePickModule
 
 @param selectedDate NSDate date object
 @param moduleOutput
 */
- (void)openDatePickModuleWithDate:(NSDate *)date moduleOutput:(id<DatePickModuleModuleOutput>)moduleOutput;

@end
