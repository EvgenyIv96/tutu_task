//
//  StationsListModuleModuleOutput.h
//  tutu
//
//  Created by Евгений Иванов on 24.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>

@class EIStation;

@protocol StationsListModuleModuleOutput <RamblerViperModuleOutput>

/**
 @author Evgeny Ivanov
 
 Method is used to inform presenter that selected station was changed
 @param station EIStation station object
 */
- (void)didChangeSelectedStationTo:(EIStation *)station;

@end
