//
//  StationsListModuleInteractorInput.h
//  tutu
//
//  Created by EI on 22/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol StationsListModuleInteractorInput <NSObject>
/**
 @author Evgeny Ivanov
 
 Method is used to obtain array of cities with stations
 */
- (NSArray *)obtainCitiesArrayWithKey:(NSString *)key;

@end
