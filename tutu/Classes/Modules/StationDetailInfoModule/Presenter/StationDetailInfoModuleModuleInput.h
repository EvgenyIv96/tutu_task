//
//  StationDetailInfoModuleModuleInput.h
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>

@class EIStation;

@protocol StationDetailInfoModuleModuleInput <RamblerViperModuleInput>

/**
 @author Evgeny Ivanov

 Метод инициирует стартовую конфигурацию текущего модуля
 @param station EIStation station object
 */
- (void)configureModuleWithStation:(EIStation *)station;


@end
