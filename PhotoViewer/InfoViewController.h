//
//  InfoViewController.h
//  PhotoViewer
//
//

#import <UIKit/UIKit.h>
#import "Photo.h"

@interface InfoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *detailsLabel;

@property (nonatomic, strong) Photo *currentPhoto;
- (IBAction)dismiss:(id)sender;

@end
