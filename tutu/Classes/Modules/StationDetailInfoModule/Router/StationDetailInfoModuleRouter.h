//
//  StationDetailInfoModuleRouter.h
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "StationDetailInfoModuleRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface StationDetailInfoModuleRouter : NSObject <StationDetailInfoModuleRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
