//
//  TripSettingModuleInteractor.m
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "TripSettingModuleInteractor.h"

#import "TripSettingModuleInteractorOutput.h"

@implementation TripSettingModuleInteractor

#pragma mark - Методы TripSettingModuleInteractorInput

- (NSData *)loadBackgroundData {
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"railway" ofType:@"gif"];
    
    NSData *backgroundData = [NSData dataWithContentsOfFile:filePath];
    
    return backgroundData;
    
}

@end
