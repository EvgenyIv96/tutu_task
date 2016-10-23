//
//  AppDelegate.m
//  tutu
//
//  Created by Евгений Иванов on 22.10.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import "AppDelegate.h"
#import <RamblerTyphoonUtils/AssemblyCollector.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

- (NSArray *)initialAssemblies {
    RamblerInitialAssemblyCollector *collector = [RamblerInitialAssemblyCollector new];
    return [collector collectInitialAssemblyClasses];
}


@end
