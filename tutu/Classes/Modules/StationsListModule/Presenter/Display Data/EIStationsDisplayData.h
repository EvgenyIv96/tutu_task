//
//  EIStationsDisplayData.h
//  tutu
//
//  Created by Евгений Иванов on 22.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EIStationsDisplayData : NSObject

@property (nonatomic, copy) NSArray *sectionsArray;

+ (instancetype)stationDisplayDataWithSectons:(NSArray *)sections;

@end
