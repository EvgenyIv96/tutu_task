//
//  StationsListModuleModuleInput.h
//  tutu
//
//  Created by EI on 22/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>

@class EIStation;

@protocol StationsListModuleModuleInput <RamblerViperModuleInput>

/**
 @author EI

 Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModuleWithSelectedStation:(EIStation *)selectedStation forCitiesKey:(NSString *)citiesKey;
@end
