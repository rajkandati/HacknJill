//
//  NyTimesData.m
//  HacknJill
//
//  Created by Raj Kandati on 6/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NyTimesData.h"
#import "NyTimesDataFetcher.h"
#import "Constants.h"

@interface NyTimesData()

- (void)loadDefaultData;

@end


@implementation NyTimesData {
    NSDictionary *defaultEventData;
}

- (id)init
{
    if (self=[super init]) {
        [self loadDefaultData];
    }
    return self;
}

- (void)loadDefaultData
{
    defaultEventData = [NyTimesDataFetcher getRecentEvents];
}


//Returns the top categories
- (NSArray *)getCategories
{
    return [[defaultEventData objectForKey: FACETS_KEY] objectForKey:CATEGORIES_KEY];
}


//Returns the sub categories
- (NSArray *)getSubCategories
{
    return [[defaultEventData objectForKey: FACETS_KEY] objectForKey:SUBCATEGORIES_KEY];
}


@end
