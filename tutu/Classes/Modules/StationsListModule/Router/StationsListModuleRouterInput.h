//
//  StationsListModuleRouterInput.h
//  tutu
//
//  Created by EI on 22/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EIStation;

@protocol StationsListModuleRouterInput <NSObject>

/**
 @author Evgeny Ivanov
 
 Method is used to open StationsListModule and configure with selected station from cities array for cities key
 
 @param EIStation Station Object, NSString cities key
 */
- (void)openEventModuleWithSelectedStation:(EIStation *)selectedStation forCitiesKey:(NSString *)citiesKey;

@end
