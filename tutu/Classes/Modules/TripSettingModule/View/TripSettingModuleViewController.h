//
//  TripSettingModuleViewController.h
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TripSettingModuleViewInput.h"

@protocol TripSettingModuleViewOutput;

@interface TripSettingModuleViewController : UIViewController <TripSettingModuleViewInput, UITextFieldDelegate>

@property (nonatomic, strong) id<TripSettingModuleViewOutput> output;

@end
