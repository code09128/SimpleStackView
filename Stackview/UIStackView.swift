//
//  UIStackView.swift
//  trans
//
//  Created by Mars on 2019/8/23.
//  Copyright © 2019 drs24. All rights reserved.
//

import UIKit

private let COLOR_VIEW:String = "colorView"

extension UIStackView {
    
    
    
    
    /// 設定 UIStackView backgroundColor
    ///
    /// - Parameter color: 要設定的顏色
    func addBackground(color: UIColor) {
        let subview = UIView(frame: bounds)
        subview.restorationIdentifier = COLOR_VIEW
        subview.backgroundColor = color
        subview.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        var isAdd:Bool = false
        
        for view in subviews{
            if view.restorationIdentifier == COLOR_VIEW{
                
                isAdd = true
                break
            }
        }
        
        if !isAdd {
            insertSubview(subview, at: 0)
        }
        
    }
    
    func removeAllSubView() {
        for each in self.subviews{
            each.removeFromSuperview()
        }
    }
}

