//
//  SpringSampleViewController.m
//  PopDemo
//
//  Created by 村田 宗一朗 on 2014/05/14.
//  Copyright (c) 2014年 murata gaia. All rights reserved.
//

#import "SpringSampleViewController.h"
#import "pop/POP.h"
//#define MCANIMATE_SHORTHAND
//#import <POP+MCAnimate.h>

@interface SpringSampleViewController ()

@end

@implementation SpringSampleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)startAnimation:(id)sender {
    POPSpringAnimation *anim = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerBounds];
    anim.toValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 200, 200)];
    anim.springSpeed = 5.0f;
    anim.springBounciness = 24.0f;
    [_sampleView pop_addAnimation:anim forKey:@"size"];
    
    //    //MCAnimation
    //    _sampleView.springBounciness = 24.0f;
    //    _sampleView.springSpeed = 5.0f;
    //    _sampleView.spring.bounds= CGRectMake(0, 0, 200, 200);
}
@end
