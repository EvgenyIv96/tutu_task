//
//  StationDetailInfoModuleAssembly.m
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "StationDetailInfoModuleAssembly.h"

#import "StationDetailInfoModuleViewController.h"
#import "StationDetailInfoModuleInteractor.h"
#import "StationDetailInfoModulePresenter.h"
#import "StationDetailInfoModuleRouter.h"
#import "EIDetailInfoPresenterStateStorage.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation StationDetailInfoModuleAssembly

- (StationDetailInfoModuleViewController *)viewStationDetailInfoModuleModule {
    return [TyphoonDefinition withClass:[StationDetailInfoModuleViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterStationDetailInfoModuleModule]];
                          }];
}

- (StationDetailInfoModuleInteractor *)interactorStationDetailInfoModuleModule {
    return [TyphoonDefinition withClass:[StationDetailInfoModuleInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterStationDetailInfoModuleModule]];
                          }];
}

- (StationDetailInfoModulePresenter *)presenterStationDetailInfoModuleModule {
    return [TyphoonDefinition withClass:[StationDetailInfoModulePresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewStationDetailInfoModuleModule]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorStationDetailInfoModuleModule]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerStationDetailInfoModuleModule]];
                              [definition injectProperty:@selector(presenterStateStorage) with:[self presenterStateStorageDetailInfoModule]];
                              
                          }];
}

- (StationDetailInfoModuleRouter *)routerStationDetailInfoModuleModule {
    return [TyphoonDefinition withClass:[StationDetailInfoModuleRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewStationDetailInfoModuleModule]];
                          }];
}

- (EIDetailInfoPresenterStateStorage *)presenterStateStorageDetailInfoModule {
    
    return [TyphoonDefinition withClass:[EIDetailInfoPresenterStateStorage class]];
    
}

@end
