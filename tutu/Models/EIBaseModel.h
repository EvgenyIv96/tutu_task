//
//  EIBaseModel.h
//  tutu
//
//  Created by Евгений Иванов on 23.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EasyMapping.h"

@interface EIBaseModel : NSObject <EKMappingProtocol>

- (id)initWithProperties:(NSDictionary *)properties;

@end
