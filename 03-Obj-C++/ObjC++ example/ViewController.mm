
#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    cppClass = new ExampleClass(0);
}

- (void)viewDidUnload {
    [super viewDidUnload];
    delete cppClass;
}

- (IBAction)buttonTouched:(id)sender {
    cppClass->incrementCounter();
    self.label.text = [NSString stringWithFormat:@"Value: %u", cppClass->getCounter()];
}
@end
