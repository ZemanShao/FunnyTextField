//
//  SZMFunnyTextFieldViewController.h
//  FunnyTextField
//
//  Created by Nathan on 14-5-12.
//  Copyright (c) 2014年 com.nathan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SZMFunnyTextFieldViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UITextField *textField;
-(void)resignTextField;
@end
