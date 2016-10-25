//
//  TripSettingModulePresenter.m
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "TripSettingModulePresenter.h"

#import "TripSettingModuleViewInput.h"
#import "TripSettingModuleInteractorInput.h"
#import "TripSettingModuleRouterInput.h"

#import "EITripItem.h"
#import "EIStation.h"

static NSString *const kCitiesFrom = @"citiesFrom";
static NSString *const kCitiesTo = @"citiesTo";
static NSString *const dateFormat = @"dd.MM.yyyy";

@implementation TripSettingModulePresenter

#pragma mark - Методы TripSettingModuleModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы TripSettingModuleViewOutput

- (void)didTriggerViewReadyEvent {
    
    [self.view setupInitialStateWithBackgroundData:[self.interactor loadBackgroundData]];;
}

- (void)setupView {
    
    self.stateStorage.item = [[EITripItem alloc] init];
    [self.view configureViewWithTripItem: self.stateStorage.item];
    
}

- (void)didTapFromStationSelection {
    
    self.stateStorage.currentSelection = EIStationSelectionFrom;
    
    [self.router openStationListModuleWithCitiesKey:kCitiesFrom moduleOutput:self];
}

- (void)didTapToStationSelection {
    
    self.stateStorage.currentSelection = EIStationSelectionTo;
    
    [self.router openStationListModuleWithCitiesKey:kCitiesTo moduleOutput:self];
}

- (void)didTapDateSelection {
    
    if ([self.stateStorage.item.dateString isEqualToString:@""]) {
        [self.router openDatePickModuleWithDate:nil moduleOutput:self];
    } else {
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:dateFormat];
        NSDate *date = [formatter dateFromString:self.stateStorage.item.dateString];
        [self.router openDatePickModuleWithDate:date moduleOutput:self];
    }
}

- (void)didTapCleanFromStationSelection {
    self.stateStorage.item.fromStationName = @"";
    [self.view configureViewWithTripItem:self.stateStorage.item];
}

- (void)didTapCleanToStationSelection {
    self.stateStorage.item.toStationName = @"";
    [self.view configureViewWithTripItem:self.stateStorage.item];
}

#pragma mark - StationsListModuleModuleOutput

- (void)didChangeSelectedStationTo:(EIStation *)station {
    
    if (self.stateStorage.currentSelection == EIStationSelectionTo) {
        
        self.stateStorage.item.toStationName = station.stationTitle;
        
        [self.view configureViewWithTripItem:self.stateStorage.item];
        
    } else if (self.stateStorage.currentSelection == EIStationSelectionFrom) {
     
        self.stateStorage.item.fromStationName = station.stationTitle;
        
        [self.view configureViewWithTripItem:self.stateStorage.item];
        
    }
    
}

#pragma mark - DatePickModuleModuleOutput

- (void)didChangeSelectedDate:(NSDate *)newDate {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:dateFormat];
    
    self.stateStorage.item.dateString = [formatter stringFromDate:newDate];
    
    [self.view configureViewWithTripItem:self.stateStorage.item];
    
}

#pragma mark - Методы TripSettingModuleInteractorOutput

@end
