//
//  TestComponent.swift
//  TestGK
//
//  Created by Toshihiro Goto on 2018/05/28.
//  Copyright © 2018年 Toshihiro Goto. All rights reserved.
//

import GameplayKit
import SceneKit

class TestComponent: GKComponent {
    
    @GKInspectable var testValue:Float = 1.0
    
    public var deleteFlag:Bool = false
    
    override func update(deltaTime seconds: TimeInterval) {
        
        if self.deleteFlag {
            delete()
        }
        
        super.update(deltaTime: seconds)
    }
    
    func delete() {
        guard let nodeComponent = entity?.component(ofType: GKSCNNodeComponent.self) else { return }
        nodeComponent.node.removeFromParentNode()
    }
}
