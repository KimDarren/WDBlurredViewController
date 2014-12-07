# WDBlurredViewController

**WDBlurredViewController** is a subclass of UIViewController has blurred background view.
You can generate the blurred view controller easily with **WDBlurredViewController**.

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

### How to change the background color.

- Set the background color.
```
vc.backgroundColor = [UIColor yellowColor];
```

- Set the alpha value of background color (Default : .5f)
```
vc.backgroundAlpha = 0.3f;
```

### Todo's

- Add transition style.
