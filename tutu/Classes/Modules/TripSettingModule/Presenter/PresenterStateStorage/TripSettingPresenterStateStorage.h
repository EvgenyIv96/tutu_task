//
//  TripSettingPresenterStateStorage.h
//  tutu
//
//  Created by Евгений Иванов on 24.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    EIStationSelectionFrom,
    EIStationSelectionTo,
} EIStationSelection;

@class EITripItem;

@interface TripSettingPresenterStateStorage : NSObject

@property (assign, nonatomic) EIStationSelection currentSelection;
@property (strong, nonatomic) EITripItem *item;

@end
