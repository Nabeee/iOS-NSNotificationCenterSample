//
//  TableViewCell.m
//  NotificationCenter
//
//  Created by Nabe on 2016/06/15.
//  Copyright © 2016年 github. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)clickButton:(id)sender {
    // Notify clicking the button to "ViewController.m"
    [[NSNotificationCenter defaultCenter] postNotificationName:@"notifyClickingButton" object:self];
}

@end
