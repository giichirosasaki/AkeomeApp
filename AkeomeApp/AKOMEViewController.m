//
//  AKOMEViewController.m
//  AkeomeApp
//
//  Created by 義一郎 佐々木 on 12/01/01.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AKOMEViewController.h"
#import "AKOMEView.h"

@implementation AKOMEViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    NSLog(@"%@",
    [UIFont fontNamesForFamilyName:@"Hiragino Mincho ProN"]);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [NSTimer scheduledTimerWithTimeInterval:1.0f target:self
                                   selector:@selector(fireTimer) userInfo:nil repeats:YES];
    
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

-(void)fireTimer
{
    AKOMEView* akomeView = (AKOMEView*) self.view;
    akomeView.globalTic++;

    [self.view setNeedsDisplay];
    
}


@end
