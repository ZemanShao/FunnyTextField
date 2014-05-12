//
//  ViewController.m
//  FunnyTextField
//
//  Created by Nathan on 14-5-12.
//  Copyright (c) 2014年 com.nathan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.titleLabel.textColor = [UIColor colorWithRed:(float)182/256 green:(float)182/256 blue:(float)182/256 alpha:1.0];
}
- (IBAction)textFiexldDidEdit:(id)sender {
    
    [UIView animateWithDuration:0.3 animations:^{
        [self.titleLabel setFrame:CGRectMake(self.titleLabel.frame.origin.x-8, self.titleLabel.frame.origin.y-25, self.titleLabel.frame.size.width, self.titleLabel.frame.size.height)];
        [self.titleLabel setTextColor:[UIColor colorWithRed:(float)3/256 green:(float)121/256 blue:(float)255/256 alpha:1.0]];
        [self.titleLabel setFont:[UIFont systemFontOfSize:10]];
    }];
    
}
- (IBAction)textFieldDidEndEdit:(id)sender {
    [UIView animateWithDuration:0.3 animations:^{
        [self.titleLabel setFrame:CGRectMake(self.titleLabel.frame.origin.x+8, self.titleLabel.frame.origin.y+25, self.titleLabel.frame.size.width, self.titleLabel.frame.size.height)];
        [self.titleLabel setTextColor:[UIColor colorWithRed:(float)182/256 green:(float)182/256 blue:(float)182/256 alpha:1.0]];
        [self.titleLabel setFont:[UIFont systemFontOfSize:17
                                  ]];
    }];
}

- (IBAction)viewTouched:(id)sender {
    [self.textField resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
