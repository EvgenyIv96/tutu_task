//
//  StationsListModuleInteractor.m
//  tutu
//
//  Created by EI on 22/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "StationsListModuleInteractor.h"

#import "StationsListModuleInteractorOutput.h"
#import "EIStationListDataManager.h"
#import "EIObjectMapper.h"
#import "EIBusinessDataStorage.h"

static NSString *const kFileName = @"allStations";

@implementation StationsListModuleInteractor

#pragma mark - Методы StationsListModuleInteractorInput

- (NSArray *)obtainCitiesArrayWithKey:(NSString *)key {
    
    if (!self.data) {
        [self createDataStorageWithCitiesForKey:key];
    }
    
    return self.data.cities;
    
}



#pragma mark - Методы StationsListModuleInteractorOutput

#pragma mark - Private Methods

- (void)createDataStorageWithCitiesForKey:(NSString *)key {
    
    self.data = [[EIBusinessDataStorage alloc] init];
    
    NSArray *dictArray = [self.dataManager dictionaryArrayForKey:key fromFile:kFileName];
    self.data.cities = [self.objectMapper citiesArrayFromDictArray:dictArray];
    
}

@end
