//
//  Quiz7DetailViewController.h
//  Quiz7
//
//  Created by MariAnne Skolnik on 4/7/14.
//  Copyright (c) 2014 MariAnne Skolnik. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"

@interface Quiz7DetailViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) Task *detailItem;
@property (nonatomic, copy) void (^dismissBlock)(void);
- (IBAction)save:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *nameText;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UIDatePicker *date;

@end
