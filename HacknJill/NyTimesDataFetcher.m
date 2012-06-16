//
//  NyTimesDataFetcher.m
//  HacknJill
//
//  Created by Raj Kandati on 6/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NyTimesDataFetcher.h"
#import "NYTimesAPIKeys.h"
#import "Constants.h"
#import "JSON.h"

@implementation NyTimesDataFetcher

+ (NSDictionary *)nyTimesQuery:(NSString *)queryString withResultsFormat:(NSString *)responseFormat
{
    
    NSString *urlString = [NSString stringWithFormat:@"http://api.nytimes.com/svc/events/v2/listings.%@?api-key=%@&%@", responseFormat,NYTimesEventsAPIKey, queryString];
    return [[NSString stringWithContentsOfURL:[NSURL URLWithString:urlString] encoding:NSUTF8StringEncoding error:nil] JSONValue];
}


+ (NSDictionary *)getRecentEvents
{
    //Todays events
    NSString *date_range = @"2012-06-16:2012-06-17";
    
    //Facets on to obtain categories
    int facets = 1;
    
    //Default number of events
    int limit = 500;
    
    //Initial Query
    NSString *queryString = [NSString stringWithFormat:@"date_range=%@&limit=%i&facets=%i", date_range, limit, facets];
    return [NyTimesDataFetcher nyTimesQuery:queryString withResultsFormat:RESPONSE_TYPE_JASON];

}





@end
