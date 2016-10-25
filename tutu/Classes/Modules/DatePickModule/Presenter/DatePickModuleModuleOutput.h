//
//  DatePickModuleModuleOutput.h
//  tutu
//
//  Created by Евгений Иванов on 25.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NSDate;

@protocol DatePickModuleModuleOutput <RamblerViperModuleOutput>

/**
 @author Evgeny Ivanov
 
 Method is used to inform presenter that selected date changed
 @param newData NSDate date object
 */
- (void)didChangeSelectedDate:(NSDate *)newDate;

@end
