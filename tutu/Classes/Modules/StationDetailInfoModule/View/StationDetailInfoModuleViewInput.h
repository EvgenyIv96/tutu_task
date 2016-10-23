//
//  StationDetailInfoModuleViewInput.h
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EIStationDetailItem;

@protocol StationDetailInfoModuleViewInput <NSObject>

/**
 @author EI

 Метод настраивает начальный стейт view
 */
- (void)setupInitialState;

/**
 @author Evgeny Ivanov
 
 Method is used to update view with station data
 @param stationItem EIStationDetailItem station display object
 */
- (void)updateViewWithStationItem:(EIStationDetailItem *)stationItem;
@end
