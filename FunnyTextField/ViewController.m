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
    self.funnyTextField = [[SZMFunnyTextFieldViewController alloc]init];
    [self addChildViewController:self.funnyTextField];
    [self.funnyTextField.view setFrame:CGRectMake(0, 40, 155, 51)];
    [self.view addSubview:self.funnyTextField.view];
}

- (IBAction)viewTouched:(id)sender {
    [self.funnyTextField.textField endEditing:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

