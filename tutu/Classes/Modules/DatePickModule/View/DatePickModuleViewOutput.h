//
//  DatePickModuleViewOutput.h
//  tutu
//
//  Created by EI on 25/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DatePickModuleViewOutput <NSObject>

/**
 @author EI

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;

/**
 @author Evgeny Ivanov
 
 Method is used to inform presenter that user taped close button
 */
- (void)didTapCloseButton;

/**
 @author Evgeny Ivanov
 
 Method is used to inform presenter that user changed selected date
 @param date NSDate new selected date
 */
- (void)didChangeSelectedDate:(NSDate *)date;

- (void)configureView;

@end
