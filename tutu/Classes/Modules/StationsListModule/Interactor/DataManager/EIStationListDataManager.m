//
//  EIStationListDataManager.m
//  tutu
//
//  Created by Евгений Иванов on 23.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import "EIStationListDataManager.h"

@implementation EIStationListDataManager

- (NSArray *)dictionaryArrayForKey:(NSString *)citiesKey fromFile:(NSString *)fileName {
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"json"];
    NSError *error = nil;
    
    NSString *fileContents = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];
    
    if (error) {
        NSLog(@"%@", [error localizedDescription]);
    }
    
    NSDictionary *citiesDict = (NSDictionary *)[NSJSONSerialization JSONObjectWithData:[fileContents dataUsingEncoding:NSUTF8StringEncoding] options:0 error:nil];
    
    NSArray *citiesArray = [citiesDict objectForKey:citiesKey];
    
    NSLog(@"finished!");
    
    return citiesArray;
    
}

@end
