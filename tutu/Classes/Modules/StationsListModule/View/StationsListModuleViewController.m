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

#import "UIView+UITableViewCell.h"

static NSString *const kStationCellNibName = @"EIStationCell";
static NSString *const kStationCellReuseIdentifier = @"EIStationCellReuseIdentifier";

@interface StationsListModuleViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) UISearchController *searchController;


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
    
    self.searchController = [[UISearchController alloc] initWithSearchResultsController:nil];
    self.searchController.searchResultsUpdater = self;
    
    [self.searchController.searchBar sizeToFit];
    
    self.tableView.tableHeaderView = self.searchController.searchBar;
    self.searchController.dimsBackgroundDuringPresentation = NO;
    
    [self.tableView setContentOffset:CGPointMake(0,self.searchController.searchBar.frame.size.height)];
    
    UIBarButtonItem *closeButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(didTapCloseButton:)];
    
    [self.navigationItem setRightBarButtonItem:closeButtonItem];
    
}

- (void)updateTableViewWithData:(EIStationsDisplayData *)data {
    
    self.data = data;
    
    [self.tableView reloadData];
}

- (void)closeStationListModule {
    
    if (self.searchController.active) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
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
    
    [cell.infoButton addTarget:self action:@selector(didTapInfoButton:) forControlEvents:UIControlEventTouchUpInside];
    cell.titleLabel.text = item.name;
    
    return cell;
    
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    EIStationsSection *sectionObject = self.data.sectionsArray[section];
    
    return sectionObject.name;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    EIStationsSection *section = self.data.sectionsArray[indexPath.section];
    
    EIStationItem *item = section.stationsArray[indexPath.row];
    
    [self.output didChangeSelectedStationToStation:item inSection:section];
    
}

#pragma mark - UISearchResultsUpdating
- (void)updateSearchResultsForSearchController:(UISearchController *)searchController {
    NSLog(@"updateSearchResults");
    
    NSString *searchText = searchController.searchBar.text;
    
    NSLog(@"%@", searchText);
    
    [self.output didChangeSearchBarWithSearchTerm:searchText];
    
}

#pragma mark - Actions

- (void)didTapInfoButton:(UIButton *)sender {
    
    [self.searchController setActive:NO];
    
    UITableViewCell *cell = [sender superUITableViewCell];
    
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    
    [self.output showDetailInfoForStationInSection:indexPath.section forIndex:indexPath.row];
    
}

- (void)didTapCloseButton:(id)sender {
    
    [self.output didTapCloseButton];
    
}

@end
