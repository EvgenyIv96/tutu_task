//
//  TripSettingModulePresenter.h
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "TripSettingModuleViewOutput.h"
#import "TripSettingModuleInteractorOutput.h"
#import "TripSettingModuleModuleInput.h"

@protocol TripSettingModuleViewInput;
@protocol TripSettingModuleInteractorInput;
@protocol TripSettingModuleRouterInput;

@interface TripSettingModulePresenter : NSObject <TripSettingModuleModuleInput, TripSettingModuleViewOutput, TripSettingModuleInteractorOutput>

@property (nonatomic, weak) id<TripSettingModuleViewInput> view;
@property (nonatomic, strong) id<TripSettingModuleInteractorInput> interactor;
@property (nonatomic, strong) id<TripSettingModuleRouterInput> router;

@end