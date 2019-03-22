//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//

import PlaygroundSupport
import Foundation
import CoreGraphics

// Initial Settings Values
let mode: DrawMode = .shape
private let fontType: Font = .chalck
public var shapeSize: Double = 0.0
private  var step: Double = 0.0
let text: String = " "

public let pixels = [Pixel(at: Position(x:0,y:0), with: Color(red: 45, green: 122, blue: 23))]

let liveView = PlaygroundPage.current.liveView as! PlaygroundRemoteLiveViewProxy

public func drawCircleWith(color: Color, at position: Position, size: Double)
{
    var settings = CanvasSettings(mode: mode, shape: .circle, font: fontType, size: size, step: step, text: text)
    let data = NSKeyedArchiver.archivedData(withRootObject: settings)
    liveView.send(.data(data))
}

public func drawSquareWith(color: Color, at position: Position, size: Double) {
    var settings = CanvasSettings(mode: mode, shape: .square, font: fontType, size: size, step: step, text: text)
    let data = NSKeyedArchiver.archivedData(withRootObject: settings)
    liveView.send(.data(data))
}

//#-end-hidden-code
/*:
 # Image Processing:
 
 
 ## Explicaçao super amadeirada
*/
//#-code-completion(everything, hide)
//#-code-completion(currentmodule, show)
//#-code-completion(identifier, show, drawCircleWith(color:, at:, size:), drawSquareWith(color:, at:, size:))

shapeSize = /*#-editable-code*/<#T##Size of the shapes##Double#>/*#-end-editable-code*/

for pixel in pixels {
    //#-editable-code Tap to enter code
    
    //#-end-editable-code
}

