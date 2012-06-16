//
//  ViewController.m
//  HacknJill
//
//  Created by Raj Kandati on 6/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "NyTimesData.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSMutableArray *events;
    NyTimesData *nyTimesData;
    
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        nyTimesData = [[NyTimesData alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"%@", [nyTimesData getCategories]);
    NSLog(@"%@", [nyTimesData getSubCategories]);
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
