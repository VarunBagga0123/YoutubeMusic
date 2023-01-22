//
//  Extension.swift
//  YoutubeMusic
//
//  Created by Varun Bagga on 19/01/23.
//

import Foundation
import UIKit

extension UIView{
    var width:CGFloat{
        return frame.size.width
    }
    var heigth:CGFloat{
        return frame.size.height
    }
    var left:CGFloat{
        return frame.origin.x
    }
    var right:CGFloat{
        return left+width
    }
    var top:CGFloat{
        return frame.origin.y
    }
    var bottom:CGFloat{
        return top + heigth
    }
}
