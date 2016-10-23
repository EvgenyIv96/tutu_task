//
//  StationsListModulePresenter.m
//  tutu
//
//  Created by EI on 22/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "StationsListModulePresenter.h"

#import "StationsListModuleViewInput.h"
#import "StationsListModuleInteractorInput.h"
#import "StationsListModuleRouterInput.h"
#import "EIStationsDisplayData.h"
#import "EIStationsSection.h"
#import "EIstationItem.h"
#import "EICity.h"
#import "EIStation.h"

@implementation StationsListModulePresenter

#pragma mark - Методы StationsListModuleModuleInput

- (void)configureModuleWithSelectedStation:(EIStation *)selectedStation forCitiesKey:(NSString *)citiesKey; {
    self.presenterStateStorage.citiesKey = citiesKey;
    self.presenterStateStorage.selectedStation = selectedStation;
}

#pragma mark - Методы StationsListModuleViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
    [self updateView];
}

- (void)updateView {
    
    self.presenterStateStorage.citiesKey = @"citiesTo";
    
    NSArray *citiesArray = [self.interactor obtainCitiesArrayWithKey:self.presenterStateStorage.citiesKey];
    
    NSMutableArray *sectionsArray = [NSMutableArray array];
    
    for (EICity *city in citiesArray) {
        
        NSMutableArray *items = [NSMutableArray array];
        
        for (EIStation *station in city.stations) {
            
            EIStationItem *item = [EIStationItem stationItemWithName:station.stationTitle country:station.city.countryTitle district:station.city.districtTitle city:station.city.cityTitle andRegion:station.city.regionTitle];
            
            [items addObject:item];
            
        }
        
        NSString *sectionName = [NSString stringWithFormat:@"%@, %@", city.countryTitle, city.cityTitle];
        
        EIStationsSection *section = [EIStationsSection stationsSectionWithName:sectionName andStations:items];
        
        [sectionsArray addObject:section];
    }
    
    EIStationsDisplayData *displayData = [EIStationsDisplayData stationDisplayDataWithSectons:sectionsArray];
    
//    NSLog(@"%d", [displayData.sectionsArray count]);
    
    [self.view updateTableViewWithData:displayData];
    
}

- (void)showDetailInfoForStationInSection:(NSInteger)section forIndex:(NSInteger)index {
    
    NSArray *citiesArray = [self.interactor obtainCitiesArrayWithKey:self.presenterStateStorage.citiesKey];
    
    EICity *city = citiesArray[section];
    
    EIStation *station = city.stations[index];
    
//    NSLog(@"%@ - %@", station.city.cityTitle, station.stationTitle);
    
    [self.router openDetailInfoModuleWithStation:station];
    
}

#pragma mark - Методы StationsListModuleInteractorOutput


@end
