

#import <UIKit/UIKit.h>
#include "ExampleClass.cpp"

@interface ViewController : UIViewController {
    ExampleClass *cppClass;
}

@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)buttonTouched:(id)sender;

@end
