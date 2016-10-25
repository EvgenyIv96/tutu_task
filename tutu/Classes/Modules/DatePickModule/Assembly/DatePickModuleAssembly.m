//
//  DatePickModuleAssembly.m
//  tutu
//
//  Created by EI on 25/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "DatePickModuleAssembly.h"

#import "DatePickModuleViewController.h"
#import "DatePickModuleInteractor.h"
#import "DatePickModulePresenter.h"
#import "DatePickModuleRouter.h"
#import "EIDatePickPresenterStateStorage.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation DatePickModuleAssembly

- (DatePickModuleViewController *)viewDatePickModuleModule {
    return [TyphoonDefinition withClass:[DatePickModuleViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterDatePickModuleModule]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterDatePickModuleModule]];
                          }];
}

- (DatePickModuleInteractor *)interactorDatePickModuleModule {
    return [TyphoonDefinition withClass:[DatePickModuleInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterDatePickModuleModule]];
                          }];
}

- (DatePickModulePresenter *)presenterDatePickModuleModule {
    return [TyphoonDefinition withClass:[DatePickModulePresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewDatePickModuleModule]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorDatePickModuleModule]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerDatePickModuleModule]];
                              [definition injectProperty:@selector(stateStorage)
                                                    with:[self presenterStateStorageDatePickModule]];
                          }];
}

- (DatePickModuleRouter *)routerDatePickModuleModule {
    return [TyphoonDefinition withClass:[DatePickModuleRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewDatePickModuleModule]];
                          }];
}

- (EIDatePickPresenterStateStorage *)presenterStateStorageDatePickModule {
    
    return [TyphoonDefinition withClass:[EIDatePickPresenterStateStorage class]];
    
}

@end
