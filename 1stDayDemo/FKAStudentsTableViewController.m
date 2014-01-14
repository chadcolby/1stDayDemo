//
//  FKAStudentsTableViewController.m
//  1stDayDemo
//
//  Created by Chad D Colby on 1/13/14.
//  Copyright (c) 2014 kramerica. All rights reserved.
//

#import "FKAStudentsTableViewController.h"

@interface FKAStudentsTableViewController ()



@end

@implementation FKAStudentsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)doNothingDuringRequest
{

}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    
    
    UIRefreshControl *refreshControl = [[UIRefreshControl alloc]init];
    [refreshControl addTarget:self action:@selector(doNothingDuringRequest) forControlEvents:UIControlEventValueChanged];
    self.refreshControl = refreshControl;

    NSString *student1 = [NSString stringWithFormat:@"Nicholas Barnard"];
    NSString *student2 = [NSString stringWithFormat:@"Zuri Biringer"];
    NSString *student3 = [NSString stringWithFormat:@"Chad Colby"];
    NSString *student4 = [NSString stringWithFormat:@"Spencer Fornaciari"];
    NSString *student5 = [NSString stringWithFormat:@"Raghav Haran"];
    NSString *student6 = [NSString stringWithFormat:@"Timothy Hise"];
    NSString *student7 = [NSString stringWithFormat:@"Ivan Lesko"];
    NSString *student8 = [NSString stringWithFormat:@"Richard Lichkus"];
    NSString *student9 = [NSString stringWithFormat:@"Bennett Lin"];
    NSString *student10 = [NSString stringWithFormat:@"Christopher Meehan"];
    NSString *student11 = [NSString stringWithFormat:@"Matt Remick"];
    NSString *student12 = [NSString stringWithFormat:@"Andrew Rodgers"];
    NSString *student13 = [NSString stringWithFormat:@"Jeff Schwab"];
    NSString *student14 = [NSString stringWithFormat:@"Steven Stevenson"];
    NSString *student15 = [NSString stringWithFormat:@"Yair Szarf"];
    
    
    self.studentsArray = [NSArray arrayWithObjects:student1, student2, student3, student4, student5, student6, student7, student8, student9, student10, student11, student12, student13, student14, student15,nil];
    
}

- (void) endPullToRefresh
{
    [self.refreshControl endRefreshing];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return self.studentsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [self.studentsArray objectAtIndex:indexPath.row];
   
    return cell;
}



/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
