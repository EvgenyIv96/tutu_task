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

@implementation TripSettingModulePresenter

#pragma mark - Методы TripSettingModuleModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы TripSettingModuleViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

#pragma mark - Методы TripSettingModuleInteractorOutput

@end
