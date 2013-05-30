//
//  Created by Chris Miles on 30/05/13.
//

#import "MSKAppDelegate.h"
#import "MSKSceneWindowController.h"

@interface MSKAppDelegate ()

@property (strong) MSKSceneWindowController *sceneWindowController;

@end

@implementation MSKAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.sceneWindowController = [[MSKSceneWindowController alloc] initWithWindowNibName:@"MSKSceneWindowController"];
    [self.sceneWindowController showWindow:nil];
}

@end
