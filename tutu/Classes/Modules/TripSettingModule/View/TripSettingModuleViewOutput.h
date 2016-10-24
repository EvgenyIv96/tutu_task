//
//  TripSettingModuleViewOutput.h
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TripSettingModuleViewOutput <NSObject>

/**
 @author EI

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;

/**
 @author EI
 
 Method is used to inform presenter
 */
- (void)setupView;

/**
 @author Evgeny Ivanov
 
 Method is used to inform presenter that user taped "from" station selection
 */
- (void)didTapFromStationSelection;

/**
 @author Evgeny Ivanov
 
 Method is used to inform presenter that user taped "to" station selection
 */
- (void)didTapToStationSelection;

/**
 @author Evgeny Ivanov
 
 Method is used to inform presenter that user taped date selection
 */
- (void)didTapDateSelection;

/**
 @author Evgeny Ivanov
 
 Method is used to inform presenter that user taped clean "from" station selection
 */
- (void)didTapCleanFromStationSelection;

/**
 @author Evgeny Ivanov
 
 Method is used to inform presenter that user taped clean "to" station selection
 */
- (void)didTapCleanToStationSelection;

@end


