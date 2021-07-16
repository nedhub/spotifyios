//
//  Extensions.swift
//  spotify
//
//  Created by Ned Ememanka on 2021-07-15.
//

import Foundation
import UIKit


extension UIView {
    
    
    
    var width: CGFloat {
        
        return frame.size.width
    }
    
    var height: CGFloat {
        
        return frame.size.width
    }
    
    var left: CGFloat {
        
        return frame.origin.x
    }
    
    var right: CGFloat {
        
        return left + width
    }
    
    var top: CGFloat {
        
        return frame.origin.y
    }
    
    var bottom: CGFloat {
        
        return top + height    }
}
