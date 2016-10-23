//
//  StationsListModuleInteractor.h
//  tutu
//
//  Created by EI on 22/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "StationsListModuleInteractorInput.h"

@protocol StationsListModuleInteractorOutput;

@class EIStationListDataManager;
@class EIObjectMapper;
@class EIBusinessDataStorage;

@interface StationsListModuleInteractor : NSObject <StationsListModuleInteractorInput>

@property (nonatomic, weak) id<StationsListModuleInteractorOutput> output;
@property (strong, nonatomic) EIStationListDataManager *dataManager;
@property (strong, nonatomic) EIObjectMapper *objectMapper;
@property (strong, nonatomic) EIBusinessDataStorage *data;

@end
