//
//  ViewController.m
//  NotificationCenter
//
//  Created by Nabe on 2016/06/15.
//  Copyright © 2016年 github. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

#define CELL_IDENTIFIER @"TableViewCell"

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setCellAutoLayout];
    
    [self.tableView registerNib:[UINib nibWithNibName:CELL_IDENTIFIER bundle:nil]
         forCellReuseIdentifier:CELL_IDENTIFIER];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notifyClickingTableCellButton:) name:@"notifyClickingButton" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)setCellAutoLayout {
    self.tableView.estimatedRowHeight = 44;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
}

- (void)notifyClickingTableCellButton:(NSNotification *)notification {
    NSLog(@"notify from TableViewCell:::%@", ((TableViewCell *)notification.object));
}


#pragma mark -TableView Delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_IDENTIFIER];
    return cell;
}



@end
