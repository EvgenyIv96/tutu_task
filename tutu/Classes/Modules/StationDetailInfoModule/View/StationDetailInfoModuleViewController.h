//
//  StationDetailInfoModuleViewController.h
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "StationDetailInfoModuleViewInput.h"

@protocol StationDetailInfoModuleViewOutput;

@interface StationDetailInfoModuleViewController : UIViewController <StationDetailInfoModuleViewInput>

@property (nonatomic, strong) id<StationDetailInfoModuleViewOutput> output;

@end
