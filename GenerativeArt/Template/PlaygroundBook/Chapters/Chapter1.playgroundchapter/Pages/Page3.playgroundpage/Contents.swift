//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//

//#-code-completion(everything, hide)
//#-code-completion(identifier, show, displayNextCharacterIn(fontSize:))
//#-code-completion(snippet, show, color, position, text, fontSize, chalck, futura, noteworthy)
//#-end-hidden-code

import PlaygroundSupport
import Foundation
import CoreGraphics

// Initial Settings Values

let chalck: Font = .chalck
let futura: Font = .futura
let noteworthy: Font = .noteworthy

var fontType: Font = .chalck
var fontSize: Double = 0.0
var step: Double = 0.0
var text: String = ""

let liveView = PlaygroundPage.current.liveView as! PlaygroundRemoteLiveViewProxy

public typealias Position = Int
public typealias Color = Float

func displayNextCharacterIn(_: String, _: Color, _: Position, fontSize: Double) {
    var settings = CanvasSettings(mode: .text, shape: .circle, font: fontType, size: fontSize, step: 0.01, text: text)
    let data = NSKeyedArchiver.archivedData(withRootObject: settings)
    liveView.send(.data(data))
}

let pixels: [Pixel] = [Pixel(at: 12, with: 11.0)]

/*:
 # Image Processing:

 ![An ASCII Art style lettering, reading WWDC 19](wwdc19.png "An ASCII Art style lettering, reading WWDC 19")
 
 
 ## Explicaçao super amadeirada
 */

// Text Configuration
text = /*#-editable-code Text to be shown*/""/*#-end-editable-code*/

// Available fonts are chalck, futura, noteworthy
fontType = /*#-editable-code FontType for the text*//*#-end-editable-code*/

fontSize = /*#-editable-code*/<#T##Size of the shapes##Double#>/*#-end-editable-code*/


for pixel in pixels {
    let color: Color = pixel.color
    let position: Position = pixel.position
    
    /*#-editable-code Tap to enter code*//*#-end-editable-code*/
}


