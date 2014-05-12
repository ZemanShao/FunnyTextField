//
//  SZMFunnyTextFieldViewController.m
//  FunnyTextField
//
//  Created by Nathan on 14-5-12.
//  Copyright (c) 2014年 com.nathan. All rights reserved.
//

#import "SZMFunnyTextFieldViewController.h"

@interface SZMFunnyTextFieldViewController ()

@end

@implementation SZMFunnyTextFieldViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.textField = [[UITextField alloc]initWithFrame:CGRectMake(0, 21, 155, 30)];
    [self.view addSubview:self.textField];
    self.titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 25, 85, 21)];
    [self.view addSubview:self.titleLabel];
    [self.titleLabel setText:@"Your Name"];
    [self.textField addTarget:self action:@selector(textFiexldDidEdit:) forControlEvents:UIControlEventEditingDidBegin];
    [self.textField addTarget:self action:@selector(textFieldDidEndEdit:) forControlEvents:UIControlEventEditingDidEnd];
    self.titleLabel.textColor = [UIColor colorWithRed:(float)182/256 green:(float)182/256 blue:(float)182/256 alpha:1.0];
}
- (IBAction)textFiexldDidEdit:(id)sender {
    if ([self.textField.text isEqualToString:@""]) {
        [UIView animateWithDuration:0.3 animations:^{
            [self.titleLabel setFrame:CGRectMake(self.titleLabel.frame.origin.x-8, self.titleLabel.frame.origin.y-25, self.titleLabel.frame.size.width, self.titleLabel.frame.size.height)];
            [self.titleLabel setTextColor:[UIColor colorWithRed:(float)3/256 green:(float)121/256 blue:(float)255/256 alpha:1.0]];
            [self.titleLabel setFont:[UIFont systemFontOfSize:10]];
        }];
    }
    else{
        [UIView animateWithDuration:0.3 animations:^{
            [self.titleLabel  setTextColor:[UIColor colorWithRed:(float)3/256 green:(float)121/256 blue:(float)255/256 alpha:1.0]];
        }];
    }
    
}
- (IBAction)textFieldDidEndEdit:(id)sender {
    if ([self.textField.text isEqualToString:@""]) {
        [self.titleLabel setFrame:CGRectMake(self.titleLabel.frame.origin.x+8, self.titleLabel.frame.origin.y+25, self.titleLabel.frame.size.width, self.titleLabel.frame.size.height)];
        [self.titleLabel setTextColor:[UIColor colorWithRed:(float)182/256 green:(float)182/256 blue:(float)182/256 alpha:1.0]];
        [self.titleLabel setFont:[UIFont systemFontOfSize:17
                                  ]];
    }
    else{
        [UIView animateWithDuration:0.3 animations:^{
            [self.titleLabel setTextColor:[UIColor colorWithRed:(float)182/256 green:(float)182/256 blue:(float)182/256 alpha:1.0]];
        }];
    }
    
}
-(void)resignTextField{
    [self.textField resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
