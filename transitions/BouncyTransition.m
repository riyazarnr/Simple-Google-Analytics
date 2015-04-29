//
//  BouncyTransition.m
//  transitions
//
//  Created by riyaz shaik on 28/06/1436 AH.
//  Copyright (c) 1436 AH Riyaz. All rights reserved.
//

#import "BouncyTransition.h"

@implementation BouncyTransition



- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext;
{
    return 1.0f;
}


-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    
    [[transitionContext containerView] addSubview:toVC.view];
    
    
    
    CGRect fullFrame = [transitionContext initialFrameForViewController:fromVC];
    
    CGFloat height = CGRectGetHeight(fullFrame);
    
    toVC.view.frame = CGRectMake(fullFrame.origin.x+20, height+16+20, CGRectGetWidth(fullFrame)-40, height-40);
    
    
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] delay:0.0 usingSpringWithDamping:0.5f initialSpringVelocity:0.6f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        toVC.view.frame = CGRectMake(20, 20, CGRectGetWidth(fullFrame)-40, height-40);
    } completion:^(BOOL finshed){
        [transitionContext completeTransition:YES];
    }];
    
    
}

@end
