//
//  Models.swift
//  Bullseye
//
//  Created by Christopher Simonson on 2/19/21.
//

import Foundation
import UIKit

enum Constants {
    enum General {
        public static let initialSliderValue = 50.0
        public static let hitmeButtonGradientOpacity = 0.3
        
        public static let strokeWidth = CGFloat(2.0)
        public static let hitmeButtonCornerRadius = CGFloat(21.0)
        public static let hitmeButtonPadding = CGFloat(20.0)
    }
    
    enum RoundedRect {
        public static let roundRectViewLength = CGFloat(56.0)
        public static let roundRectViewWidth = CGFloat(68.0)
        public static let roundRectViewHeight = CGFloat(56.0)
        public static let roundRectCornerRadius = CGFloat(21.0)
        public static let roundRectTextKerning = CGFloat(-0.2)
        public static let roundVStackSpacing = CGFloat(10.0)
    }
    
    enum Text {
        public static let instructionTextLineSpacing = CGFloat(4.0)
        public static let instructionTextKerning = CGFloat(2.0)
        public static let instructionTextPadding = CGFloat(30.0)
        public static let bigNumberTextKerning = CGFloat(-1.0)
        public static let sliderLabelTextWidth = CGFloat(35.0)
        public static let bodyTextLineSpacing = CGFloat(12.0)
        public static let buttonTextCornerRadius = CGFloat(12.0)
        public static let labelTextKerning = CGFloat(1.5)
    }
    
    enum Background {
        public static let ringsViewStrokeWidth = CGFloat(20.0)
        public static let ringsViewGradientStartRadius = CGFloat(100)
        public static let ringsViewGradientStopRadius = CGFloat(300)
        public static let numberViewSpacing = CGFloat(5.0)
        public static let ringsViewGradientOpacity = 0.8
    }
}
