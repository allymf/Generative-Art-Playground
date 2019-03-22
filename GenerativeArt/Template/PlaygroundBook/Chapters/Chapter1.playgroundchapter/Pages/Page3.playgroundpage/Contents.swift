//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//

//#-code-completion(everything, hide)
//#-code-completion(identifier, show, displayNextCharacterIn(text:))
//#-code-completion(snippet, show, color, position)
//#-end-hidden-code
import PlaygroundSupport
import Foundation
import CoreGraphics

// Initial Settings Values
var fontType: Font = .chalck
var size: Double = 0.0
var step: Double = 0.0
var text: String = ""

let liveView = PlaygroundPage.current.liveView as! PlaygroundRemoteLiveViewProxy

func displayNextCharacterIn(text: String, _: Color, _: Position) {
    var settings = CanvasSettings(mode: .text, shape: .circle, font: fontType, size: size, step: step, text: text)
    let data = NSKeyedArchiver.archivedData(withRootObject: settings)
    liveView.send(.data(data))
}

let pixels: [Pixel] = [Pixel(at: Position(x:0,y:0), with: Color(red: 45, green: 122, blue: 23))]

/*:
 # Image Processing:

 ![An ASCII Art style lettering, reading WWDC 19](wwdc19.png "An ASCII Art style lettering, reading WWDC 19")
 
 
 ## Explicaçao super amadeirada
 */
// Text Configuration
text = /*#-editable-code*/<#T##Text to be drawn##String#>/*#-end-editable-code*/
fontType = /*#-editable-code*/<#T##Font##Font#>/*#-end-editable-code*/
size = /*#-editable-code*/<#T##Size of the shapes##Double#>/*#-end-editable-code*/


for pixel in pixels {
    let color = pixel.color
    let position = pixel.position
    //#-editable-code Tap to enter code
    
    //#-end-editable-code
}


