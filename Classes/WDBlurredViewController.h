#import <UIKit/UIKit.h>

@interface WDBlurredViewController : UIViewController

@property (nonatomic) UIBlurEffectStyle blurStyle;

@property (nonatomic, retain) UIColor *backgroundColor;
@property (nonatomic) CGFloat backgroundAlpha;

@end