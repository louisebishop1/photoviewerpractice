//
//  DisplayViewController.m
//  PhotoViewer
//
//

#import "DisplayViewController.h"

@implementation DisplayViewController

@synthesize currentImage;
@synthesize currentPhoto;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:[currentPhoto filename]];
    [self.currentImage setImage:image];
    [self setTitle:[currentPhoto name]];
    
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    InfoViewController *ivc = [segue destinationViewController];
    [ivc setCurrentPhoto:[self currentPhoto]];
    
}


- (void)viewDidUnload
{
    [self setCurrentImage:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
