//
//  DisplayViewController.h
//  PhotoViewer
//

//

#import <UIKit/UIKit.h>
#import "Photo.h"
#import "InfoViewController.h"

@interface DisplayViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *currentImage;

@property (nonatomic, strong) Photo *currentPhoto;

@end
