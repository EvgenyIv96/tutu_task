//
//  TripSettingModuleViewInput.h
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EITripItem;

@protocol TripSettingModuleViewInput <NSObject>

/**
 @author EI

 Метод настраивает начальный стейт view
 @param data NSData data with gif file
 */
- (void)setupInitialStateWithBackgroundData:(NSData *)data;

/**
 @author Evgeny Ivanov
 
 Method is used to configure view
 
 @param trip EITrip trip object
 */
- (void)configureViewWithTripItem:(EITripItem *)trip;

@end
