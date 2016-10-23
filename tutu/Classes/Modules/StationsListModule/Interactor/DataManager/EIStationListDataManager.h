//
//  EIStationListDataManager.h
//  tutu
//
//  Created by Евгений Иванов on 23.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EIStationListDataManager : NSObject

- (NSArray *)dictionaryArrayForKey:(NSString *)citiesKey fromFile:(NSString *)fileName;

@end
