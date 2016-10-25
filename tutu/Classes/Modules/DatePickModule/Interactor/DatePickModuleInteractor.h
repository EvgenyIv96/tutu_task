//
//  DatePickModuleInteractor.h
//  tutu
//
//  Created by EI on 25/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "DatePickModuleInteractorInput.h"

@protocol DatePickModuleInteractorOutput;

@interface DatePickModuleInteractor : NSObject <DatePickModuleInteractorInput>

@property (nonatomic, weak) id<DatePickModuleInteractorOutput> output;

@end
