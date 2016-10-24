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

static NSString *const kSectionsNameArray = @"kSectionsNameArray";

@interface StationsListModulePresenter ()

@property (strong, nonatomic) NSArray *sectionNamesArray;

@property (strong, nonatomic) EIStationsDisplayData *allData;
@property (strong, nonatomic) EIStationsDisplayData *filteredData;

@end

@implementation StationsListModulePresenter

#pragma mark - Методы StationsListModuleModuleInput

- (void)configureModuleWithSelectedStation:(EIStation *)selectedStation forCitiesKey:(NSString *)citiesKey; {
    self.presenterStateStorage.citiesKey = citiesKey;
    self.presenterStateStorage.selectedStation = selectedStation;
}

#pragma mark - Методы StationsListModuleViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
    [self updateViewWithFullData];
}

- (void)didChangeSearchBarWithSearchTerm:(NSString *)searchText {
    
    if (searchText.length == 0) {
        self.filteredData = nil;
        NSLog(@"filtered data was deleted");
        [self.view updateTableViewWithData:self.allData];
    } else {
        [self updateViewWithFilteredDataWithSearchTerm:searchText];
    }
    
}

- (void)showDetailInfoForStationInSection:(NSInteger)section forIndex:(NSInteger)index {
    
    NSArray *citiesArray = [self.interactor obtainCitiesArrayWithKey:self.presenterStateStorage.citiesKey];
    
    EICity *city = citiesArray[section];
    
    EIStation *station = city.stations[index];
    
    [self.router openDetailInfoModuleWithStation:station];
    
}

- (void)didChangeSelectedStationToStation:(EIStationItem *)station inSection:(EIStationsSection *)section; {
    
    NSInteger cityIndex = NSNotFound;
    NSInteger stationIndex = NSNotFound;
    
    cityIndex = [self.sectionNamesArray indexOfObject:section.name];
    
    NSArray *citiesArray = [self.interactor obtainCitiesArrayWithKey:self.presenterStateStorage.citiesKey];
    
    EIStationsSection *stationSection = [self.allData.sectionsArray objectAtIndex:cityIndex];
    
    stationIndex = [stationSection.stationsArray indexOfObject:station];
    
    EICity *city = citiesArray[cityIndex];
    
    self.presenterStateStorage.selectedStation = city.stations[stationIndex];
    
    [self.moduleOutput didChangeSelectedStationTo:self.presenterStateStorage.selectedStation];
    
    [self.view closeStationListModule];
    
}

- (void)didTapCloseButton {
    [self.view closeStationListModule];
}

#pragma mark - Методы StationsListModuleInteractorOutput

#pragma mark - Private Methods

- (void)updateViewWithFullData {
    
    self.presenterStateStorage.citiesKey = @"citiesTo";
    
    if (self.allData) {
        [self.view updateTableViewWithData:self.allData];
        return;
    }
    
    NSArray *citiesArray = [self.interactor obtainCitiesArrayWithKey:self.presenterStateStorage.citiesKey];
    
    NSMutableArray *sectionNamesArray = [NSMutableArray array];
    
    NSMutableArray *sectionsArray = [NSMutableArray array];
    
    for (EICity *city in citiesArray) {
        
        NSMutableArray *items = [NSMutableArray array];
        
        for (EIStation *station in city.stations) {
            
            EIStationItem *item = [EIStationItem stationItemWithName:station.stationTitle country:station.city.countryTitle district:station.city.districtTitle city:station.city.cityTitle andRegion:station.city.regionTitle];
            
            [items addObject:item];
            
        }
        
        NSString *sectionName = [NSString stringWithFormat:@"%@, %@", city.countryTitle, city.cityTitle];
        
        [sectionNamesArray addObject:sectionName];
        
        EIStationsSection *section = [EIStationsSection stationsSectionWithName:sectionName andStations:items];
        
        [sectionsArray addObject:section];
    }
    
    self.sectionNamesArray = sectionNamesArray;
    
    self.allData = [EIStationsDisplayData stationDisplayDataWithSectons:sectionsArray];
    
    //    NSLog(@"%d", [displayData.sectionsArray count]);
    
    [self.view updateTableViewWithData:self.allData];
    
}

- (void)updateViewWithFilteredDataWithSearchTerm:(NSString *)searchText {
    
    NSMutableArray *filteredSections = [NSMutableArray array];
    
    for (EIStationsSection *section in [self.allData sectionsArray]) {
        
        NSMutableArray *filteredStations = [NSMutableArray array];
        
        for (EIStationItem *item in section.stationsArray) {
            
            if ([item.name localizedCaseInsensitiveContainsString:searchText] == YES) {
                [filteredStations addObject:item];
            }
            
        }
        
        if ([filteredStations count] > 0) {
            [filteredSections addObject:section];
        }
        
    }
    self.filteredData = [EIStationsDisplayData stationDisplayDataWithSectons:filteredSections];
    [self.view updateTableViewWithData:self.filteredData];
}

@end
