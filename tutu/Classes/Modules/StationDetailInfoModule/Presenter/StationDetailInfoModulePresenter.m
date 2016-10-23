//
//  StationDetailInfoModulePresenter.m
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "StationDetailInfoModulePresenter.h"

#import "StationDetailInfoModuleViewInput.h"
#import "StationDetailInfoModuleInteractorInput.h"
#import "StationDetailInfoModuleRouterInput.h"
#import "EIDetailInfoPresenterStateStorage.h"

#import "EIStationDetailItem.h"

@implementation StationDetailInfoModulePresenter

#pragma mark - Методы StationDetailInfoModuleModuleInput

- (void)configureModuleWithStation:(EIStation *)station {
    self.presenterStateStorage.station = station;
}

#pragma mark - Методы StationDetailInfoModuleViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
    [self updateView];
}



#pragma mark - Методы StationDetailInfoModuleInteractorOutput

#pragma mark - Private Methods

- (void)updateView {
    
    EIStationDetailItem *item = [[EIStationDetailItem alloc] initWithStation:self.presenterStateStorage.station];
    
    [self.view updateViewWithStationItem:item];
}

@end
