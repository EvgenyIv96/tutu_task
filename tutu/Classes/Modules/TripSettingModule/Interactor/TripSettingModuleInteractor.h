//
//  TripSettingModuleInteractor.h
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "TripSettingModuleInteractorInput.h"

@protocol TripSettingModuleInteractorOutput;

@interface TripSettingModuleInteractor : NSObject <TripSettingModuleInteractorInput>

@property (nonatomic, weak) id<TripSettingModuleInteractorOutput> output;

@end
