//
//  StationDetailInfoModuleViewController.m
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "StationDetailInfoModuleViewController.h"

#import "StationDetailInfoModuleViewOutput.h"

#import "EIStationDetailItem.h"

@interface StationDetailInfoModuleViewController ()

@property (weak, nonatomic) IBOutlet UILabel *infoLabel;

@end

@implementation StationDetailInfoModuleViewController

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.output didTriggerViewReadyEvent];
}

#pragma mark - Методы StationDetailInfoModuleViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
}

- (void)updateViewWithStationItem:(EIStationDetailItem *)stationItem {
    
    NSString *dataString = [NSString stringWithFormat:@""];

    if (![stationItem.countryName isEqualToString:@""]) {
        dataString = [NSString stringWithFormat:@"%@Country: %@\n",dataString,stationItem.countryName];
    }
    
    if (![stationItem.districtName isEqualToString:@""]) {
        dataString = [NSString stringWithFormat:@"%@District: %@\n",dataString,stationItem.districtName];
    }

    if (![stationItem.cityName isEqualToString:@""]) {
        dataString = [NSString stringWithFormat:@"%@City: %@\n",dataString,stationItem.cityName];
    }

    if (![stationItem.regionName isEqualToString:@""]) {
        dataString = [NSString stringWithFormat:@"%@Region: %@\n",dataString,stationItem.regionName];
    }

    if (![stationItem.ID isEqualToString:@""]) {
        dataString = [NSString stringWithFormat:@"%@ID: %@\n", dataString,stationItem.ID];
    }
    
    if (![stationItem.name isEqualToString:@""]) {
        dataString = [NSString stringWithFormat:@"%@Name: %@\n",dataString,stationItem.name];
    }
    
    self.infoLabel.text = dataString;
}

@end
