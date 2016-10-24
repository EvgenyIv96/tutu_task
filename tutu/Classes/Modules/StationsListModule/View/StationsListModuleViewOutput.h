//
//  StationsListModuleViewOutput.h
//  tutu
//
//  Created by EI on 22/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EIStationItem;
@class EIStationsSection;

@protocol StationsListModuleViewOutput <NSObject>

/**
 @author EI

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;

/** 
 @author EI
 
 Method is used to inform presenter that user taped on info station button
 @param section index and station index
 */
- (void)showDetailInfoForStationInSection:(NSInteger)section forIndex:(NSInteger)index;

/**
 @author Evgeny Ivanov
 
 Method is used to inform presenter that user changed text in search bar
 @param searchText NSString new search text
 */
- (void)didChangeSearchBarWithSearchTerm:(NSString *)searchText;


/**
 @author Evgeny Ivanov
 
 Method is used to inform presenter that user selected another station
 @param station EIStationItem station display object, section EIStationsSection section display object
 */
- (void)didChangeSelectedStationToStation:(EIStationItem *)station inSection:(EIStationsSection *)section;

/**
 @author Evgeny Ivanov
 
 Method is used to inform present that user taped close button
 */
- (void)didTapCloseButton;

@end
