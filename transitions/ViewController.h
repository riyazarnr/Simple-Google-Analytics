//
//  ViewController.h
//  transitions
//
//  Created by riyaz shaik on 28/06/1436 AH.
//  Copyright (c) 1436 AH Riyaz. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BouncyTransition.h"

#import "pathsViewController.h"

#import "GAITrackedViewController.h"



@interface ViewController : GAITrackedViewController        <UIViewControllerTransitioningDelegate>


-(void)SignInButtonAction;
@end

