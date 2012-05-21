//
//  TestViewController.m
//  QALabel
//
//  Created by Bernhard Waldbrunner on 12/4/9.
//  Copyright (c) 2012 QuantApps. All rights reserved.
//

#import "TestViewController.h"
#import "NSUserDefaults_Common.h"


@implementation TestViewController

- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    if (firstLaunch)
        QAConfirmAlert(@"Launched for the first time.", @"OK", nil);
}

- (void) viewDidLoad
{
    [super viewDidLoad];
    if ((firstLaunch = [NSUserDefaults firstLaunch]))
        [NSUserDefaults writeSerializationVersion:AppVersion];
    
    if ([NSUserDefaults appWasRated])
        rateButton.enabled = NO;
    
    version.text = [NSUserDefaults serializationVersion];
}

- (IBAction) rateApp:(id)sender
{
    QAErrorAlert(@"This is just a test app.");
    rateButton.enabled = NO;
    [NSUserDefaults writeAppWasRated];
}

@end
