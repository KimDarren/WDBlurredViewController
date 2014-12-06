#import "SecondViewController.h"

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)dismiss:(id)sender
{
    [UIView animateWithDuration:0.3 animations:^{
        self.view.alpha = 0;
    } completion:^(BOOL finished) {
        [self dismissViewControllerAnimated:NO completion:nil];
    }];
}

@end
