//
//  TripSettingModuleInteractorInput.h
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EITrip;

@protocol TripSettingModuleInteractorInput <NSObject>

/**
 @author Evgeny Ivanov
 
 Method is used to load background animation
 */
- (NSData *)loadBackgroundData;

@end
