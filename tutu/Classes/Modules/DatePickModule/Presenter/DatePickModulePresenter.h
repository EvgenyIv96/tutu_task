//
//  DatePickModulePresenter.h
//  tutu
//
//  Created by EI on 25/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "DatePickModuleViewOutput.h"
#import "DatePickModuleInteractorOutput.h"
#import "DatePickModuleModuleInput.h"
#import "EIDatePickPresenterStateStorage.h"

@protocol DatePickModuleViewInput;
@protocol DatePickModuleInteractorInput;
@protocol DatePickModuleRouterInput;
@protocol DatePickModuleModuleOutput;

@interface DatePickModulePresenter : NSObject <DatePickModuleModuleInput, DatePickModuleViewOutput, DatePickModuleInteractorOutput>

@property (nonatomic, weak) id<DatePickModuleViewInput> view;
@property (nonatomic, strong) id<DatePickModuleInteractorInput> interactor;
@property (nonatomic, strong) id<DatePickModuleRouterInput> router;
@property (nonatomic, strong) EIDatePickPresenterStateStorage *stateStorage;

@property (nonatomic, strong) id<DatePickModuleModuleOutput> moduleOutput;

@end
