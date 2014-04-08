//
//  Task.h
//  Quiz7
//
//  Created by MariAnne Skolnik on 4/7/14.
//  Copyright (c) 2014 MariAnne Skolnik. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject

@property(nonatomic) float urgency;
@property(nonatomic,retain) NSString *name;
@property(nonatomic,retain) NSDate *dueDate;

@end
