//
//  CustomPropertyViewController.h
//  PopDemo
//
//  Created by 村田 宗一朗 on 2014/05/14.
//  Copyright (c) 2014年 murata gaia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomPropertyViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *countLabel;
- (IBAction)startAnimation:(id)sender;

@end
