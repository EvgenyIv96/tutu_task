//
//  TripSettingModuleRouter.h
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "TripSettingModuleRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface TripSettingModuleRouter : NSObject <TripSettingModuleRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
