//
//  Created by Chris Miles on 30/05/13.
//

#import "MSKSceneView.h"

@implementation MSKSceneView

- (id)initWithFrame:(NSRect)frameRect options:(NSDictionary *)options
{
    self = [super initWithFrame:frameRect options:options];
    if (self) {
	[self setupScene];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setupScene];
    }
    return self;
}

- (void)setupScene
{
    self.allowsCameraControl = YES;
    
    SCNScene *scene = [SCNScene scene];
    self.scene = scene;

    [self addGeometryToScene:scene];
    [self addCameraAndLightsToScene:scene];
}

- (void)addGeometryToScene:(SCNScene *)scene
{
    SCNCylinder *cylinder = [SCNCylinder cylinderWithRadius:1.0 height:5.0];
    SCNNode *cylinderNode = [SCNNode nodeWithGeometry:cylinder];
    [scene.rootNode addChildNode:cylinderNode];
}

- (void)addCameraAndLightsToScene:(SCNScene *)scene
{
    {
	// Create a camera
	SCNCamera *camera = [SCNCamera camera];
	camera.xFov = 45; // degrees
	camera.yFov = 45;
	SCNNode *cameraNode = [SCNNode node];
	cameraNode.camera = camera;
	cameraNode.position = SCNVector3Make(0.0f, 0.0f, 10.0f);
	[scene.rootNode addChildNode:cameraNode];
    }
    
    {
	// Create ambient light
	SCNLight *ambientLight = [SCNLight light];
	ambientLight.type = SCNLightTypeAmbient;
	ambientLight.color = [NSColor colorWithDeviceWhite:0.6f alpha:1.0f];
	SCNNode *ambientLightNode = [SCNNode node];
	ambientLightNode.light = ambientLight;
	[scene.rootNode addChildNode:ambientLightNode];
    }
    
    {
	// Create a diffuse light
	SCNLight *diffuseLight = [SCNLight light];
	diffuseLight.color = [NSColor colorWithDeviceWhite:1.0 alpha:1.0];
	SCNNode *diffuseLightNode = [SCNNode node];
	diffuseLight.type = SCNLightTypeOmni;
	diffuseLightNode.light = diffuseLight;
	diffuseLightNode.position = SCNVector3Make(-30.0f, 30.0f, 50.0f);
	[scene.rootNode addChildNode:diffuseLightNode];
    }
    
    {
	// Create another diffuse light
	SCNLight *diffuseLight = [SCNLight light];
	diffuseLight.color = [NSColor colorWithDeviceWhite:1.0 alpha:1.0];
	SCNNode *diffuseLightNode = [SCNNode node];
	diffuseLight.type = SCNLightTypeOmni;
	diffuseLightNode.light = diffuseLight;
	diffuseLightNode.position = SCNVector3Make(40.0f, -30.0f, -50.0f);
	[scene.rootNode addChildNode:diffuseLightNode];
    }
}

@end
