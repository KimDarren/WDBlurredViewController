# WDBlurredViewController

**WDBlurredViewController** is a subclass of UIViewController has blurred background view.

### Screenshot
![Screenshot01](https://raw.githubusercontent.com/KimDarren/WDBlurredViewController/master/Screenshots/IMG_6389.PNG)

### How to use?

- Create a SecondViewController as subclass of WDBlurredViewController.
- Write the code below in First view controller.
```
SecondViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:SecondViewControllerId];
[self presentViewController:vc animated:NO completion:nil];
```

### How to change the blur-style.

```
vc.blurStyle = UIBlurEffectStyleDark;
```

```
typedef NS_ENUM(NSInteger, UIBlurEffectStyle) {
    UIBlurEffectStyleExtraLight,
    UIBlurEffectStyleLight,
    UIBlurEffectStyleDark
}
```