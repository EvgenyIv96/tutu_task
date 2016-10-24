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

static NSString *const kFileName = @"allStations";

@interface StationsListModuleInteractor ()

@property (strong, nonatomic) NSArray *citiesArray;

@end

@implementation StationsListModuleInteractor

#pragma mark - Методы StationsListModuleInteractorInput

- (NSArray *)obtainCitiesArrayWithKey:(NSString *)key {
    
    if (!self.citiesArray) {
        self.citiesArray = [NSArray arrayWithArray:[self citiesFromJSONWithCitiesForKey:key]];
    }
    
    return self.citiesArray;
    
}


#pragma mark - Методы StationsListModuleInteractorOutput

#pragma mark - Private Methods

- (NSArray *)citiesFromJSONWithCitiesForKey:(NSString *)key {
    
    NSArray *dictArray = [self.dataManager dictionaryArrayForKey:key fromFile:kFileName];
    
    return [self.objectMapper citiesArrayFromDictArray:dictArray];
    
}

@end
