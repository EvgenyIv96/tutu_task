//
//  StationDetailInfoModuleInteractor.h
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "StationDetailInfoModuleInteractorInput.h"

@protocol StationDetailInfoModuleInteractorOutput;

@interface StationDetailInfoModuleInteractor : NSObject <StationDetailInfoModuleInteractorInput>

@property (nonatomic, weak) id<StationDetailInfoModuleInteractorOutput> output;

@end
