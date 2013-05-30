//
//  Created by Chris Miles on 30/05/13.
//

#import "MSKSceneWindowController.h"
#import "MSKSceneView.h"

@interface MSKSceneWindowController ()

@property (strong) IBOutlet MSKSceneView *sceneView;

@end

@implementation MSKSceneWindowController

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

@end
