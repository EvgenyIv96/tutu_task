//
//  StationsListModuleViewController.h
//  tutu
//
//  Created by EI on 22/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "StationsListModuleViewInput.h"

@protocol StationsListModuleViewOutput;

@class EIStationsDisplayData;

@interface StationsListModuleViewController : UIViewController <StationsListModuleViewInput>

@property (nonatomic, strong) id<StationsListModuleViewOutput> output;

@property (nonatomic, strong) EIStationsDisplayData *data;


@end
