//
//  TripSettingModuleModuleInput.h
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>

@protocol TripSettingModuleModuleInput <RamblerViperModuleInput>

/**
 @author EI

 Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModule;

@end
