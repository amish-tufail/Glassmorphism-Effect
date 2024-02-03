//
//  TransparentBlurView.swift
//  GlassmorphismEffect
//
//  Created by Amish Tufail on 03/02/2024.
//

import SwiftUI
import UIKit

struct TransparentBlurView: UIViewRepresentable {
    var removeAllFilters: Bool = false
    func makeUIView(context: Context) -> TransparentBlurViewHelper {
       return TransparentBlurViewHelper(removeAllFilters: removeAllFilters)
    }
    
    func updateUIView(_ uiView: TransparentBlurViewHelper, context: Context) {
        
    }
}

class TransparentBlurViewHelper: UIVisualEffectView {
    init(removeAllFilters: Bool) {
        super.init(effect: UIBlurEffect(style: .systemUltraThinMaterial))
        if subviews.indices.contains(1) {
            subviews[1].alpha = 0
        }
        if let backDropLayer = layer.sublayers?.first {
            if removeAllFilters {
                backDropLayer.filters = []
            } else {
                // Removing All Expect Blur Effect
                backDropLayer.filters?.removeAll(where: { filter in
                    String(describing: filter) != "gaussianBlur"
                })
            }
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

#Preview {
    TransparentBlurView()
        .padding(15.0)
}
