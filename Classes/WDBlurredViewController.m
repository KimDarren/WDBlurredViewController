#import "WDBlurredViewController.h"

@interface WDBlurredViewController ()

@property (strong, nonatomic) UIVisualEffectView *visualEffectView;

@end

@implementation WDBlurredViewController

- (void)initialize
{
    self.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    self.backgroundColor = [UIColor clearColor];
    self.backgroundAlpha = 0.5f;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initialize];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initialize];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Insert blurred view
    UIVisualEffect *blurEffect = [UIBlurEffect effectWithStyle:_blurStyle];
    _visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    _visualEffectView.frame = self.view.bounds;
    _visualEffectView.backgroundColor = [_backgroundColor colorWithAlphaComponent:_backgroundAlpha];
    [self.view insertSubview:_visualEffectView atIndex:0];

    self.view.backgroundColor = [UIColor clearColor];
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
    _backgroundColor = backgroundColor;
    _visualEffectView.backgroundColor = [_backgroundColor colorWithAlphaComponent:_backgroundAlpha];
}

- (void)setBackgroundAlpha:(CGFloat)backgroundAlpha
{
    _backgroundAlpha = backgroundAlpha;
    _visualEffectView.backgroundColor = [_backgroundColor colorWithAlphaComponent:_backgroundAlpha];
}

@end
