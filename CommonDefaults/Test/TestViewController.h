//
//  TestViewController.h
//  QALabel
//
//  Created by Bernhard Waldbrunner on 12/4/9.
//  Copyright (c) 2012 QuantApps. All rights reserved.
//


@interface TestViewController : UIViewController
{
    IBOutlet UIButton *rateButton;
    IBOutlet UILabel *version;
    BOOL firstLaunch;
}

- (IBAction) rateApp:(id)sender;

@end
