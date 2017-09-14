//
//  SubAppInitialScreen.m
//  SubAppLibrary
//
//  Created by Ransika De Silva on 9/13/17.
//  Copyright © 2017 Visni (Pvt) Ltd. All rights reserved.
//

#import "SubAppInitialScreen.h"

@interface SubAppInitialScreen ()

@end

@implementation SubAppInitialScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (IBAction)btnBackPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
