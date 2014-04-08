//
//  Quiz7DetailViewController.m
//  Quiz7
//
//  Created by MariAnne Skolnik on 4/7/14.
//  Copyright (c) 2014 MariAnne Skolnik. All rights reserved.
//

#import "Quiz7DetailViewController.h"

@interface Quiz7DetailViewController ()
- (void)configureView;
@end

@implementation Quiz7DetailViewController
@synthesize dismissBlock;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        [self.nameText setText:[self.detailItem name]];
        [self.slider setValue:[self.detailItem urgency]];
        [self.date setDate:[self.detailItem dueDate]];

    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.nameText setDelegate:self];
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)save:(id)sender {
    [self.detailItem setName:[self.nameText text]];
    [self.detailItem setUrgency:[self.slider value]];
    [self.detailItem setDueDate:[self.date date]];
    [self.presentingViewController dismissViewControllerAnimated:NO completion:dismissBlock];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

@end
