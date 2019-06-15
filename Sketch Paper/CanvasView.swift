//
//  CanvasView.swift
//  Sketch Paper
//
//  Created by Stephen E. Cotner on 6/14/19.
//  Copyright © 2019 Steve Cotner. All rights reserved.
//

import SwiftUI
import PencilKit

struct CanvasView: UIViewRepresentable {
    var delegate: PaperModel
    
    func makeUIView(context: Context) -> PKCanvasView {
        PKCanvasView(frame: .zero)
    }
    
    func updateUIView(_ view: PKCanvasView, context: Context) {
        view.delegate = delegate
        view.allowsFingerDrawing = delegate.allowsFingerDrawing
    }
}

#if DEBUG
struct CanvasView_Previews: PreviewProvider {
    static var previews: some View {
        PaperView(paperModel: PaperModel())
    }
}
#endif
