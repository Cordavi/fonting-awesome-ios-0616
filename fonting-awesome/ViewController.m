//
//  ViewController.m
//  fonting-awesome
//
//  Created by Michael Amundsen on 6/29/16.
//  Copyright © 2016 Michael Amundsen. All rights reserved.
//

#import "ViewController.h"
#import "FontAwesomeKit/FontAwesomeKit.h"
#import "CWStatusBarNotification.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonTapped;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FAKFontAwesome *starIcon = [FAKFontAwesome starIconWithSize:15];
    [self.buttonTapped setAttributedTitle:[starIcon attributedString] forState:UIControlStateNormal];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapped:(id)sender {
    FAKFontAwesome *iconToChange = [FAKFontAwesome thumbsUpIconWithSize:50];
    [self.buttonTapped setAttributedTitle:[iconToChange attributedString] forState:UIControlStateNormal];
    CWStatusBarNotification *notification = [[CWStatusBarNotification alloc] init];
    notification.notificationLabelBackgroundColor = [UIColor orangeColor];
    notification.notificationAnimationInStyle = CWNotificationAnimationStyleBottom;
    notification.notificationStyle = CWNotificationStyleNavigationBarNotification;
    [notification displayNotificationWithMessage:@"You're a star!" forDuration:5];
}

@end
