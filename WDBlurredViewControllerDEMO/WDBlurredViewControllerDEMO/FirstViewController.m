#import "FirstViewController.h"
#import "SecondViewController.h"

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)showBlurredModal:(id)sender
{
    // Load view controller from storyboard.
    SecondViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:SecondViewControllerId];
    // Set the blur effect style.
    vc.blurStyle = UIBlurEffectStyleLight;
    // Set the color of blur view.
    vc.backgroundColor = [UIColor yellowColor];
    // Set the alpha value of background color of blur view. (Default : 0.5f)
    vc.backgroundAlpha = 0.3f;
    // Present the view controller.
    [self presentViewController:vc animated:NO completion:nil];
}

@end
