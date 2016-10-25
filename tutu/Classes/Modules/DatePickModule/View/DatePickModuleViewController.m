//
//  DatePickModuleViewController.m
//  tutu
//
//  Created by EI on 25/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "DatePickModuleViewController.h"

#import "DatePickModuleViewOutput.h"

@interface DatePickModuleViewController ()

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;

@end

@implementation DatePickModuleViewController

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.output didTriggerViewReadyEvent];
}

- (void)viewDidAppear:(BOOL)animated {
    
    [self.output configureView];
    
}

#pragma mark - Методы DatePickModuleViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
    
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:0];
    
    [self.saveButton addTarget:self action:@selector(saveButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *closeButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(closeButtonAction:)];
    
    [self.navigationItem setRightBarButtonItem:closeButtonItem];
    
}

- (void)configureViewWithDate:(NSDate *)date {
    
    [self.datePicker setDate:date animated:YES];
    
}

- (void)closeDatePickModule {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Actions

- (void)closeButtonAction:(id)sender {
    [self.output didTapCloseButton];
}

- (void)saveButtonAction:(id)sender {
    
    [self.output didChangeSelectedDate:self.datePicker.date];
    NSLog(@"save");
    
}

@end
