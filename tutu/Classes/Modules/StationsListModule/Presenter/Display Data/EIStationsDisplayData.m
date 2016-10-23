//
//  EIStationsDisplayData.m
//  tutu
//
//  Created by Евгений Иванов on 22.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import "EIStationsDisplayData.h"

@implementation EIStationsDisplayData

+ (instancetype)stationDisplayDataWithSectons:(NSArray *)sections {
    
    EIStationsDisplayData *data = [[EIStationsDisplayData alloc] init];
    
    data.sectionsArray = sections;
    
    return data;
    
}

@end
