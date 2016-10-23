//
//  StationsListModulePresenter.h
//  tutu
//
//  Created by EI on 22/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "StationsListModuleViewOutput.h"
#import "StationsListModuleInteractorOutput.h"
#import "StationsListModuleModuleInput.h"
#import "EIStationsListPresenterStateStorage.h"

@protocol StationsListModuleViewInput;
@protocol StationsListModuleInteractorInput;
@protocol StationsListModuleRouterInput;

@interface StationsListModulePresenter : NSObject <StationsListModuleModuleInput, StationsListModuleViewOutput, StationsListModuleInteractorOutput>

@property (nonatomic, weak) id<StationsListModuleViewInput> view;
@property (nonatomic, strong) id<StationsListModuleInteractorInput> interactor;
@property (nonatomic, strong) id<StationsListModuleRouterInput> router;
@property (nonatomic, strong) EIStationsListPresenterStateStorage *presenterStateStorage;


@end
