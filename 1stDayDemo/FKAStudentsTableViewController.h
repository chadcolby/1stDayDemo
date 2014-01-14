//
//  FKAStudentsTableViewController.h
//  1stDayDemo
//
//  Created by Chad D Colby on 1/13/14.
//  Copyright (c) 2014 kramerica. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FKAStudentsTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSArray *studentsArray;
@property (strong, nonatomic) NSArray *instructorArray;

- (void) doNothingDuringRequest;

@end
