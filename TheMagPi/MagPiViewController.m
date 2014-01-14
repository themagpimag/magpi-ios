//
//  MagPiViewController.m
//  TheMagPi
//
//  Created by Andrea Stagi on 1/14/14.
//  Copyright (c) 2014 Andrea Stagi. All rights reserved.
//

#import "MagPiViewController.h"
#import <Foundation/Foundation.h>
#include "Issue.h"
#include "News.h"
#include "MagPiClient.h"

@interface MagPiViewController ()

@end

@implementation MagPiViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    void (^issuesCB)(NSArray *issues) = ^(NSArray *issues)
    {
        for (Issue* issue in issues)
            NSLog(@"%@", [issue repr]);
    };
    MagPiClient* client = [[MagPiClient alloc]init];
    [client getIssues:issuesCB];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
