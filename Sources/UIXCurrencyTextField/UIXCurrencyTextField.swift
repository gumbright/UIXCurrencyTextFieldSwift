import UIKit

protocol UIXCurrencyTextFieldDelegate
{

//return YES if editing should stop
    func currencyTextFieldShouldEndEditing(currencyTextField:UIXCurrencyTextField)
    func currencyTextFieldDidChange(currencyTextField:UIXCurrencyTextField)
    func currencyTextFieldDidEndEditing(currencyTextField:UIXCurrencyTextField)
}

class UIXCurrencyTextField : UIView,UITextFieldDelegate
{
    static  formatter = {
        let f = NumberFormatter()
        f.numberStyle = .currency
        return f
    }
    var textColor : UIColor = UIColor.black
    var font : UIFont?
    var caretWidth : CGFloat = 3.0
    var maxLength : NSUInteger
    var inputAccessoryView : UIView?
    var value : float
    var decimalValue : NSDecimalNumber
    var delegate : UIXCurrencyTextFieldDelegate
    
    func defaultAccessoryView() -> UIView
    {
        let v = UIToolbar()
        v.barTintColor = UIColor(colorWithWhite:.85, alpha:0.5)
        v.items = [UIBarButtonItem(]
    }
    - (void) setupDefaultAccessoryView
    {
        UIToolbar* v = [[UIToolbar alloc] initWithFrame:CGRectZero];
        v.barTintColor = [UIColor colorWithWhite:.85 alpha:.5];
        
        v.items = @[[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil],
                    [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(donePressed:)]];
        [v sizeToFit];
        
        self.currentInputAccessory = v;
    }

}
//@property (nonatomic, readwrite) UIColor* textColor;
//@property (nonatomic, readwrite) UIFont* font;
//@property (nonatomic, assign) CGFloat caretWidth;
//
//@property (nonatomic, assign) NSUInteger maxLength; //
//
//@property (nonatomic, strong) UIView* inputAccessoryView;
//
//@property (nonatomic, assign) float value;
//@property (unsafe_unretained, nonatomic, readonly) NSDecimalNumber* decimalValue;
//@property (nonatomic, unsafe_unretained) NSObject<UIXCurrencyTextFieldDelegate>* delegate;

