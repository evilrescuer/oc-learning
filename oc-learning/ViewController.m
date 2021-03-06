//
//  ViewController.m
//  oc-learning
//
//  Created by Zhimao Lin on 2020/3/18.
//  Copyright © 2020 Zhimao Lin. All rights reserved.
//

#import "ViewController.h"
#import "Page2ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nickNameInput;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)Login:(id)sender {
    [self performSegueWithIdentifier:@"showDetail" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    Page2ViewController *page2 = [segue destinationViewController];
    page2.labelString = _nickNameInput.text;
}

@end
