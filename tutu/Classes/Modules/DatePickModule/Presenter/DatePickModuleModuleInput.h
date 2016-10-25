//
//  DatePickModuleModuleInput.h
//  tutu
//
//  Created by EI on 25/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>

@protocol DatePickModuleModuleInput <RamblerViperModuleInput>

/**
 @author Evgeny Ivanov

 Method is used to configure module with selected date
 @param date NSDate date object
 */
- (void)configureModuleWithDate:(NSDate *)date;

@end
