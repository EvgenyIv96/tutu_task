//
//  TripSettingModuleAssembly.m
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "TripSettingModuleAssembly.h"

#import "TripSettingModuleViewController.h"
#import "TripSettingModuleInteractor.h"
#import "TripSettingModulePresenter.h"
#import "TripSettingModuleRouter.h"
#import "TripSettingPresenterStateStorage.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation TripSettingModuleAssembly

- (TripSettingModuleViewController *)viewTripSettingModuleModule {
    return [TyphoonDefinition withClass:[TripSettingModuleViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTripSettingModuleModule]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterTripSettingModuleModule]];
                          }];
}

- (TripSettingModuleInteractor *)interactorTripSettingModuleModule {
    return [TyphoonDefinition withClass:[TripSettingModuleInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterTripSettingModuleModule]];
                          }];
}

- (TripSettingModulePresenter *)presenterTripSettingModuleModule {
    return [TyphoonDefinition withClass:[TripSettingModulePresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewTripSettingModuleModule]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorTripSettingModuleModule]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerTripSettingModuleModule]];
                              [definition injectProperty:@selector(stateStorage)
                                                    with:[self presenterStateStorageTripSettingModule]];
                              
                          }];
}

- (TripSettingModuleRouter *)routerTripSettingModuleModule {
    return [TyphoonDefinition withClass:[TripSettingModuleRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewTripSettingModuleModule]];
                          }];
}

- (TripSettingPresenterStateStorage *)presenterStateStorageTripSettingModule {
    
    return [TyphoonDefinition withClass:[TripSettingPresenterStateStorage class]];
    
}

@end
