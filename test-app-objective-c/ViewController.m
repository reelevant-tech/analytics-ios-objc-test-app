//
//  ViewController.m
//  test-app-objective-c
//
//  Created by Valentin Touffet on 09/11/2022.
//

#import "ViewController.h"
@import ReelevantAnalytics;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)mybtnclick:(id)sender {
    Configuration *config = [[Configuration alloc] initWithCompanyId:@"foo" datasourceId:@"bar"];
    SDK *sdk = [[SDK alloc] initWithConfiguration:config];
    
    Event *event = [EventBuilder page_viewWithLabels:[[NSMutableDictionary alloc] init]];
    
    [sdk sendWithEvent:event];
}

@end
