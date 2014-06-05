//
//  ViewController.m
//  Notifications
//
//  Created by Ryan Tiltz on 6/5/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myTextField;


@end

@implementation ViewController


- (IBAction)changeColor:(id)sender
{
    [self.view endEditing:YES];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"ChangeColorNotification" object:self.myTextField.text];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
