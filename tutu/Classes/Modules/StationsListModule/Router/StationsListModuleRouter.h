//
//  StationsListModuleRouter.h
//  tutu
//
//  Created by EI on 22/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "StationsListModuleRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface StationsListModuleRouter : NSObject <StationsListModuleRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
