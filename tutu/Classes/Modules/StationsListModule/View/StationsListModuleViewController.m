//
//  StationsListModuleViewController.m
//  tutu
//
//  Created by EI on 22/10/2016.
//  Copyright © 2016 Evgeny Ivanov. All rights reserved.
//

#import "StationsListModuleViewController.h"

#import "StationsListModuleViewOutput.h"

#import "EIStationsDisplayData.h"
#import "EIStationsSection.h"
#import "EIStationItem.h"
#import "EIStationCell.h"

static NSString *const kStationCellNibName = @"EIStationCell";
static NSString *const kStationCellReuseIdentifier = @"EIStationCellReuseIdentifier";

@interface StationsListModuleViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation StationsListModuleViewController

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];
	[self.output didTriggerViewReadyEvent];
}

#pragma mark - Методы StationsListModuleViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
}

- (void)updateTableViewWithData:(EIStationsDisplayData *)data {
    
    self.data = data;
    
    [self.tableView reloadData];
}

- (void)changeSelectedCellAtIndexPath:(NSIndexPath *)oldCellPath toCellAtIndexPath:(NSIndexPath *)newCellPath {
    
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:oldCellPath];
    cell.accessoryType = UITableViewCellAccessoryNone;
    
    cell = [self.tableView cellForRowAtIndexPath:newCellPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
}

#pragma mark - UITableViewDataSource and UITableViewDelegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.data.sectionsArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    EIStationsSection *sectionObject = self.data.sectionsArray[section];
    
    return [sectionObject.stationsArray count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    EIStationsSection *sectionObject = self.data.sectionsArray[indexPath.section];
    EIStationItem *item = sectionObject.stationsArray[indexPath.row];
    
    EIStationCell *cell = [self.tableView dequeueReusableCellWithIdentifier:kStationCellReuseIdentifier];
    
    if (!cell) {
        UINib *cellNib = [UINib nibWithNibName:kStationCellNibName bundle:nil];
        
        [self.tableView registerNib:cellNib forCellReuseIdentifier:kStationCellReuseIdentifier];
        
        cell = [self.tableView dequeueReusableCellWithIdentifier:kStationCellReuseIdentifier];
    }
    
    cell.titleLabel.text = item.name;
    
    return cell;
    
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    EIStationsSection *sectionObject = self.data.sectionsArray[section];
    
    return sectionObject.name;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

@end
