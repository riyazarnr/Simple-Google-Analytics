//
//  pathsViewController.m
//  transitions
//
//  Created by riyaz shaik on 28/06/1436 AH.
//  Copyright (c) 1436 AH Riyaz. All rights reserved.
//

#import "pathsViewController.h"

#import "ViewController.h"

@interface pathsViewController ()

@end

@implementation pathsViewController     

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [UIColor grayColor];
    
}



- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    self.screenName = @"About Screen 2";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)LoginCLicked:(id)sender {
    
   // ViewController *vie = [ViewController new];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}
@end
