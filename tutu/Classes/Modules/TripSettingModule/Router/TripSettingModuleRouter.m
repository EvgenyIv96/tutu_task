//
//  TripSettingModuleRouter.m
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "TripSettingModuleRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

#import "StationsListModuleModuleInput.h"
#import "StationsListModuleModuleOutput.h"
#import "DatePickModuleModuleInput.h"
#import "DatePickModuleModuleOutput.h"

static NSString *const kTripSettingModuleToStationListModuleSegue = @"kTripSettingModuleToStationListModuleSegue";
static NSString *const kTripSettingModuleToDatePickModuleSegue = @"kTripSettingModuleToDatePickModuleSegue";

@implementation TripSettingModuleRouter

#pragma mark - Методы TripSettingModuleRouterInput

- (void)openStationListModuleWithCitiesKey:(NSString *)citiesKey moduleOutput:(id<StationsListModuleModuleOutput>)moduleOutput {
    
    [[self.transitionHandler openModuleUsingSegue:kTripSettingModuleToStationListModuleSegue] thenChainUsingBlock:^id<StationsListModuleModuleOutput>(id<StationsListModuleModuleInput> moduleInput) {
        
        [moduleInput configureModuleWithSelectedStation:nil forCitiesKey:citiesKey];
        
        return moduleOutput;
    }];
    
}

- (void)openDatePickModuleWithDate:(NSDate *)date moduleOutput:(id<DatePickModuleModuleOutput>)moduleOutput {
    
    [[self.transitionHandler openModuleUsingSegue:kTripSettingModuleToDatePickModuleSegue]
     thenChainUsingBlock:^id<DatePickModuleModuleOutput>(id<DatePickModuleModuleInput> moduleInput) {
         
         [moduleInput configureModuleWithDate:date];
         
         return moduleOutput;
         
     }];
    
}

@end
