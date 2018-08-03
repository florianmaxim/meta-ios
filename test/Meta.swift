//
//  Meta.swift
//  test
//
//  Created by Florian on 03/08/2018.
//  Copyright © 2018 Florian. All rights reserved.
//

import Foundation
import SceneKit

var view = SCNView()
var scene = SCNScene()

public class Meta {
    
    init(_view: SCNView) {
        
        view = _view
        
        scene = SCNScene()

        view.scene = scene
        
        view.autoenablesDefaultLighting = true

        // allows the user to manipulate the camera
        view.allowsCameraControl = true
        
        // show statistics such as fps and timing information
        view.showsStatistics = true
        
        // configure the view
        view.backgroundColor = UIColor.red
        
        // create and add a camera to the scene
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        
        scene.rootNode.addChildNode(cameraNode)
        
        // place the camera
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 15)
        
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light!.type = .omni
        lightNode.position = SCNVector3(x: 0, y: 10, z: 10)
        //scene.rootNode.addChildNode(lightNode)
        
    }
}

public class Cube {
    init(width: CGFloat, height: CGFloat, length: CGFloat){
        
        let boxGeometry = SCNBox(width: width, height: height, length: length, chamferRadius: 0.05)
        let boxNode = SCNNode(geometry: boxGeometry)
        
        boxNode.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
        scene.rootNode.addChildNode(boxNode)
    }
}
