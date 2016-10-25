//
//  StationsListModuleViewInput.h
//  tutu
//
//  Created by EI on 22/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EIStationsDisplayData;

@protocol StationsListModuleViewInput <NSObject>

/**
 @author EI

 Метод настраивает начальный стейт view
 */
- (void)setupInitialState;

/**
 @author Evgeny Ivanov
 
 Method is used to update table
 @param data EIStationsDisplayData display data with sections with stations
 */
- (void)updateTableViewWithData:(EIStationsDisplayData *)data;

/**
 @author Evgeny Ivanov
 
 Method is used to close current module
 */
- (void)closeStationListModule;


@end
