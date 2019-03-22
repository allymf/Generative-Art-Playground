//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//

//#-code-completion(everything, hide)
//#-code-completion(identifier, show, drawCircleWith(size:), drawSquareWith(size:))
//#-code-completion(snippet, show, color, position)
//#-end-hidden-code

//#-hidden-code
import PlaygroundSupport
import Foundation
import CoreGraphics

// Initial Settings Values
private let fontType: Font = .chalck
let text: String = " "

public let pixels = [Pixel(at: 11, with: 19)]

let liveView = PlaygroundPage.current.liveView as! PlaygroundRemoteLiveViewProxy
public typealias Position = Int
public typealias Color = Int

func fillColor(_: Color) -> Void {
    print("Boa")
}

func drawCircleWith(_: Color,_: Position,size: Double)
{
    
    var settings = CanvasSettings(mode: .shape, shape: .circle, font: fontType, size: size, step: 0.1, text: text)
    let data = NSKeyedArchiver.archivedData(withRootObject: settings)
    liveView.send(.data(data))
}
func drawSquareWith(_: Color, _: Position, size: Double) {
    var settings = CanvasSettings(mode: .shape, shape: .square, font: fontType, size: size, step: 0.1, text: text)
    let data = NSKeyedArchiver.archivedData(withRootObject: settings)
    liveView.send(.data(data))
}
//#-end-hidden-code


/*:
 # Image Processing:
 ## Explicaçao super amadeirada
*/

for pixel in pixels {
    let color: Position = pixel.color
    let position: Position = pixel.position
    
    /*#-editable-code Tap to enter code*//*#-end-editable-code*/
}


