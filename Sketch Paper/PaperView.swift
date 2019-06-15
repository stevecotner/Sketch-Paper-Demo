//
//  Paper.swift
//  Sketch Paper
//
//  Created by Stephen E. Cotner on 6/14/19.
//  Copyright © 2019 Steve Cotner. All rights reserved.
//

import SwiftUI
import PencilKit

struct PaperView: View {
    var paperModel: PaperModel
    
    var body: some View {
        CanvasView(delegate: paperModel)
    }
}

#if DEBUG
struct PaperView_Previews: PreviewProvider {
    static var previews: some View {
        PaperView(paperModel: PaperModel())
    }
}
#endif
