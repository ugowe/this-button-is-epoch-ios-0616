//
//  FISEpochViewController.m
//  EpochButton
//
//  Created by Ugowe on 6/16/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISEpochViewController.h"

@interface FISEpochViewController ()
@property (weak, nonatomic) IBOutlet UILabel *epochLabel;

@end

@implementation FISEpochViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)epochButtonTapped:(id)sender {
    CGFloat myFloat = [self epochMethod];
    NSString *myString = [NSString stringWithFormat:@"%f", myFloat];
    self.epochLabel.text = myString;
    
}

- (CGFloat)epochMethod {
    return [[NSDate date] timeIntervalSince1970];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
