//
//  ViewController.m
//  transitions
//
//  Created by riyaz shaik on 28/06/1436 AH.
//  Copyright (c) 1436 AH Riyaz. All rights reserved.
//

#import "ViewController.h"

#import "GAI.h"

#import "pathsViewController.h"

#import "GAIDictionaryBuilder.h"

#define kGAIScreenName @"TopNewsViewController"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    
    UIBarButtonItem *siinButton = [[UIBarButtonItem alloc]initWithTitle:@"signIn" style:UIBarButtonItemStylePlain target:self action:@selector(SignInButtonAction)];
    
    self.navigationItem.rightBarButtonItem = siinButton;
    
    
    
        self.screenName = @"Home Screen";
    
    
    
}



- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    self.screenName = @"About Screen 1";
}


-(id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    BouncyTransition *transition  = [[BouncyTransition alloc]init];
    
    return transition;
}


-(void)SignInButtonAction
{
    
    pathsViewController *paths = [[pathsViewController alloc]init];
    
    
    paths.modalPresentationStyle = UIModalPresentationCustom;
    
    paths.transitioningDelegate = self;
    
    [self presentViewController:paths animated:YES completion:nil];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
