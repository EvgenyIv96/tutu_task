//
//  DatePickModulePresenter.m
//  tutu
//
//  Created by EI on 25/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "DatePickModulePresenter.h"

#import "DatePickModuleViewInput.h"
#import "DatePickModuleInteractorInput.h"
#import "DatePickModuleRouterInput.h"
#import "DatePickModuleModuleOutput.h"

@implementation DatePickModulePresenter

#pragma mark - Методы DatePickModuleModuleInput

- (void)configureModuleWithDate:(NSDate *)date {
    if (date) { 
        self.stateStorage.selectedDate = date;
    }
}

#pragma mark - Методы DatePickModuleViewOutput

- (void)didTriggerViewReadyEvent {
    
	[self.view setupInitialState];
    
}

- (void)didChangeSelectedDate:(NSDate *)date {
    self.stateStorage.selectedDate = date;
    [self.moduleOutput didChangeSelectedDate:date];
    [self.view closeDatePickModule];
}

- (void)didTapCloseButton {
    [self.view closeDatePickModule];
}

- (void)configureView {
    
    if (self.stateStorage.selectedDate) {
        [self.view configureViewWithDate:self.stateStorage.selectedDate];
    } else {
        [self.view configureViewWithDate:[NSDate dateWithTimeIntervalSinceNow:0]];
    }

}

#pragma mark - Методы DatePickModuleInteractorOutput



@end
