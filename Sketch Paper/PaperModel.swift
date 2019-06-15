//
//  PaperModel.swift
//  Sketch Paper
//
//  Created by Stephen E. Cotner on 6/14/19.
//  Copyright © 2019 Steve Cotner. All rights reserved.
//

import Foundation
import PencilKit

class PaperModel: NSObject {
    static let canvasWidth: CGFloat = 768
    var drawing = PKDrawing()
    var allowsFingerDrawing: Bool = true
}

extension PaperModel: PKCanvasViewDelegate {
    func canvasViewDidBeginUsingTool(_ canvasView: PKCanvasView) {
        debugPrint("Canvas did begin using tool")
    }
    
    func canvasViewDidEndUsingTool(_ canvasView: PKCanvasView) {
        debugPrint("Canvas did end using tool")
    }
    
    func canvasViewDidFinishRendering(_ canvasView: PKCanvasView) {
        debugPrint("Canvas did finish rendering")
    }
}
