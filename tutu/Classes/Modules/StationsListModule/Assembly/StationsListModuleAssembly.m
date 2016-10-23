//
//  StationsListModuleAssembly.m
//  tutu
//
//  Created by EI on 22/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "StationsListModuleAssembly.h"

#import "StationsListModuleViewController.h"
#import "StationsListModuleInteractor.h"
#import "StationsListModulePresenter.h"
#import "StationsListModuleRouter.h"
#import "EIStationListDataManager.h"
#import "EIObjectMapper.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation StationsListModuleAssembly

- (StationsListModuleViewController *)viewStationsListModuleModule {
    return [TyphoonDefinition withClass:[StationsListModuleViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterStationsListModuleModule]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterStationsListModuleModule]];
                          }];
}

- (StationsListModuleInteractor *)interactorStationsListModuleModule {
    return [TyphoonDefinition withClass:[StationsListModuleInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterStationsListModuleModule]];
                              [definition injectProperty:@selector(dataManager) with:[self dataManager]];
                              [definition injectProperty:@selector(objectMapper) with:[self objectMapper]];
                          }];
}

- (StationsListModulePresenter *)presenterStationsListModuleModule {
    return [TyphoonDefinition withClass:[StationsListModulePresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewStationsListModuleModule]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorStationsListModuleModule]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerStationsListModuleModule]];
                              [definition injectProperty:@selector(presenterStateStorage) with:[self presenterStateStorage]];
                          }];
}

- (StationsListModuleRouter *)routerStationsListModuleModule {
    return [TyphoonDefinition withClass:[StationsListModuleRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewStationsListModuleModule]];
                          }];
}

- (EIStationsListPresenterStateStorage *)presenterStateStorage {
    
    return [TyphoonDefinition withClass:[EIStationsListPresenterStateStorage class]];
            
}

- (EIStationListDataManager *)dataManager {
    
    return [TyphoonDefinition withClass:[EIStationListDataManager class]];
    
}

- (EIObjectMapper *)objectMapper {
    
    return [TyphoonDefinition withClass:[EIObjectMapper class]];
    
}

@end
