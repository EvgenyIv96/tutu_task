//
//  StationsListModuleRouter.m
//  tutu
//
//  Created by EI on 22/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "StationsListModuleRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

#import "StationDetailInfoModuleModuleInput.h"

static NSString *const kStationListModuleToStationDetailInfoModuleSegue = @"kStationListModuleToStationDetailInfoModuleSegue";

@implementation StationsListModuleRouter

#pragma mark - Методы StationsListModuleRouterInput

- (void)openDetailInfoModuleWithStation:(EIStation *)station {
    
    [[self.transitionHandler openModuleUsingSegue:kStationListModuleToStationDetailInfoModuleSegue] thenChainUsingBlock:^id<RamblerViperModuleOutput>(id<StationDetailInfoModuleModuleInput> moduleInput) {
        [moduleInput configureModuleWithStation:station];
        return nil;
    }];
    
}

@end
