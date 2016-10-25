//
//  DatePickModuleRouter.h
//  tutu
//
//  Created by EI on 25/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "DatePickModuleRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface DatePickModuleRouter : NSObject <DatePickModuleRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
