//
//  ModalViewController.m
//  SpheroModal
//
//  Created by Libor Huspenina on 08/07/14.
//  Copyright (c) 2014 Edu. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()

@property (strong, nonatomic) RUICalibrateButtonGestureHandler *calibrateAboveHandler;

//this needs to be strong, otherwise gets dealocated after calibration and disappears from view
@property (strong, nonatomic) IBOutlet UIButton* caliButton;

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.calibrateAboveHandler = [[RUICalibrateButtonGestureHandler alloc] initWithView:self.view button:self.caliButton];
    self.calibrateAboveHandler.calibrationRadius = 200;
    self.calibrateAboveHandler.calibrationCircleLocation = RUICalibrationCircleLocationAbove;
    [self.calibrateAboveHandler setBackgroundWithColor:[UIColor colorWithRed:226.0/255.0 green:11.0/255.0 blue:23.0/255.0 alpha:1.0]];
    [self.calibrateAboveHandler setForegroundWithColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1]];
}

- (IBAction)dismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
