#import "WDBlurredViewController.h"

@implementation WDBlurredViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Insert blurred view
    UIVisualEffect *blurEffect = [UIBlurEffect effectWithStyle:_blurStyle];
    UIVisualEffectView *visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    visualEffectView.frame = self.view.bounds;
    [self.view insertSubview:visualEffectView atIndex:0];

    self.view.backgroundColor = [UIColor clearColor];
}

@end
