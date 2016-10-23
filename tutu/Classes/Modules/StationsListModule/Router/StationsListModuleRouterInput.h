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

 Method is used to initiate transition to the StationDetailInfoModule
 @param station EIStation station object
 */
- (void)openDetailInfoModuleWithStation:(EIStation *)station;

@end
