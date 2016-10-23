//
//  StationDetailInfoModulePresenter.h
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "StationDetailInfoModuleViewOutput.h"
#import "StationDetailInfoModuleInteractorOutput.h"
#import "StationDetailInfoModuleModuleInput.h"
#import "EIDetailInfoPresenterStateStorage.h"

@protocol StationDetailInfoModuleViewInput;
@protocol StationDetailInfoModuleInteractorInput;
@protocol StationDetailInfoModuleRouterInput;

@interface StationDetailInfoModulePresenter : NSObject <StationDetailInfoModuleModuleInput, StationDetailInfoModuleViewOutput, StationDetailInfoModuleInteractorOutput>

@property (nonatomic, weak) id<StationDetailInfoModuleViewInput> view;
@property (nonatomic, strong) id<StationDetailInfoModuleInteractorInput> interactor;
@property (nonatomic, strong) id<StationDetailInfoModuleRouterInput> router;
@property (strong, nonatomic) EIDetailInfoPresenterStateStorage *presenterStateStorage;

@end
