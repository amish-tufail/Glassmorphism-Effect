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
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterial))
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
//        DispatchQueue.main.sync {
            if let backDropLayer = uiView.layer.sublayers?.first {
                if removeAllFilters {
                    backDropLayer.filters = []
                } else {
                    // Removing All Expect Blur Effect
                    backDropLayer.filters?.removeAll(where: { filter in
                        String(describing: filter) != "gaussianBlur"
                    })
                }
            }
//        }
    }
}

#Preview {
    TransparentBlurView()
        .padding(15.0)
}
