//
//  DatePickModuleViewController.h
//  tutu
//
//  Created by EI on 25/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DatePickModuleViewInput.h"

@protocol DatePickModuleViewOutput;

@interface DatePickModuleViewController : UIViewController <DatePickModuleViewInput>

@property (nonatomic, strong) id<DatePickModuleViewOutput> output;

@end
