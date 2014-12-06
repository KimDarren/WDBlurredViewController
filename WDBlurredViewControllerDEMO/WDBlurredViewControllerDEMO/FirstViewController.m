#import "FirstViewController.h"
#import "SecondViewController.h"

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)showBlurredModal:(id)sender
{
    SecondViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:SecondViewControllerId];
    [self presentViewController:vc animated:NO completion:nil];
}

@end
