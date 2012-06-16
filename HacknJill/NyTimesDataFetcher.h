//
//  NyTimesDataFetcher.h
//  HacknJill
//
//  Created by Raj Kandati on 6/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NyTimesDataFetcher : NSObject
//name, location, description

//Returns top recent events
+ (NSDictionary *)getRecentEvents;


@end
