//
//  TripSettingModuleViewController.m
//  tutu
//
//  Created by EI on 23/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "TripSettingModuleViewController.h"

#import "TripSettingModuleViewOutput.h"

#import "EITripItem.h"

@interface TripSettingModuleViewController ()

@property (weak, nonatomic) IBOutlet UITextField *fromStationField;
@property (weak, nonatomic) IBOutlet UITextField *toStationField;
@property (weak, nonatomic) IBOutlet UITextField *dateField;

@end

@implementation TripSettingModuleViewController

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.output didTriggerViewReadyEvent];
    
    [self.output setupView];
    
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
}

#pragma mark - Методы TripSettingModuleViewInput

- (void)setupInitialStateWithBackgroundData:(NSData *)data {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
    
    UIWebView *webViewBG = [[UIWebView alloc] initWithFrame:self.view.frame];
    [webViewBG loadData:data MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
    webViewBG.userInteractionEnabled = NO;
    [self.view insertSubview:webViewBG atIndex:0];
    
    
    UIView *filter = [[UIView alloc] initWithFrame:self.view.frame];
    filter.backgroundColor = [UIColor blackColor];
    filter.alpha = 0.05;
    [self.view insertSubview:filter atIndex:1];
    
    [self.navigationItem setTitle:@"Поездка"];
    
}

- (void)configureViewWithTripItem:(EITripItem *)trip {
    
    if (trip.fromStationName) {
        self.fromStationField.text = trip.fromStationName;
    }
    
    if (trip.toStationName) {
        self.toStationField.text = trip.toStationName;
    }
    
    if (trip.dateString) {
        self.dateField.text = trip.dateString;
    }
    
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    
    if ([textField isEqual:self.fromStationField]) {
        
        [self.output didTapFromStationSelection];
        
    } else if ([textField isEqual:self.toStationField]) {
        
        [self.output didTapToStationSelection];
        
    } else if ([textField isEqual:self.dateField]) {
        
        [self.output didTapDateSelection];
        
    }
    
    return NO;
    
}

- (BOOL)textFieldShouldClear:(UITextField *)textField {
    
    if ([textField isEqual:self.fromStationField]) {
        [self.output didTapCleanFromStationSelection];
    } else if ([textField isEqual:self.toStationField]) {
        [self.output didTapCleanToStationSelection];
    }
    
    return NO;
    
}

@end
