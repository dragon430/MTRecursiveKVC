//
//  NSSet+RecursiveKVC.m
//  MTRecursiveKVC
//
//  Created by Maximilian Tagher on 1/14/13.
//  Copyright (c) 2013 Max. All rights reserved.
//

#import "NSSet+RecursiveKVC.h"
#import "NSObject+RecursiveKVC.h"

@implementation NSSet (RecursiveKVC)

- (void)RKCVrecursiveValueForKey:(NSString *)key progress:(NSMutableArray *)progress
{
    for (id obj in self) {
        [obj RKCVrecursiveValueForKey:key progress:progress];
    }
}

@end