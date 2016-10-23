//
//  StationsListModuleViewOutput.h
//  tutu
//
//  Created by EI on 22/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol StationsListModuleViewOutput <NSObject>

/**
 @author EI

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;

/** 
 @author EI
 
 Method is used to inform presenter that user taps on info station button
 @param section index and station index
 */
- (void)showDetailInfoForStationInSection:(NSInteger)section forIndex:(NSInteger)index;

/**
 @author Evgeny Ivanov
 
 Method is used to inform presenter that user changed text in search bar
 @param new search text
 */
- (void)didChangeSearchBarWithSearchTerm:(NSString *)searchText;

@end
