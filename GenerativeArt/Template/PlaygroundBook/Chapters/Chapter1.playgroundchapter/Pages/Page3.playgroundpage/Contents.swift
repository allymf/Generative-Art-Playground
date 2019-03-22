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
var fontType: Font = .chalck
var size: Double = 0.0
var step: Double = 0.0
var text: String = ""

let liveView = PlaygroundPage.current.liveView as! PlaygroundRemoteLiveViewProxy

func displayNextCharacter(in text: String, with color: Color, at position: Position) {
    var settings = CanvasSettings(mode: .text, shape: .circle, font: fontType, size: size, step: step, text: text)
    let data = NSKeyedArchiver.archivedData(withRootObject: settings)
    liveView.send(.data(data))
}

let pixels: [Pixel] = [Pixel(at: Position(x:0,y:0), with: Color(red: 45, green: 122, blue: 23))]
//#-end-hidden-code
/*:
 # Image Processing:
 
 
 ## Explicaçao super amadeirada
 */

// Text Configuration
text = /*#-editable-code*/<#T##Text to be drawn##String#>/*#-end-editable-code*/
fontType = /*#-editable-code*/<#T##Font##Font#>/*#-end-editable-code*/
size = /*#-editable-code*/<#T##Size of the shapes##Double#>/*#-end-editable-code*/

//#-code-completion(everything, hide)
//#-code-completion(currentmodule, show)
//#-code-completion(identifier, show, displayNextCharacter(in:, with:, at:))
//#-code-completion(description, show, "displayNextCharacter(in: String, with: color, at: Position)")
for pixel in pixels {
    //#-editable-code Tap to enter code
    
    //#-end-editable-code
}


