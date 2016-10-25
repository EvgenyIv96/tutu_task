//
//  DatePickModuleViewInput.h
//  tutu
//
//  Created by EI on 25/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DatePickModuleViewInput <NSObject>

/**
 @author EI

 Метод настраивает начальный стейт view
 */
- (void)setupInitialState;

/**
 @author Evgeny Ivanov
 
 Method is used to setting view with date
 @param date NSDate date object
 */
- (void)configureViewWithDate:(NSDate *)date;


/**
 @author Evgeny Ivanov
 
 Method is used to close module
 */
- (void)closeDatePickModule;

@end
