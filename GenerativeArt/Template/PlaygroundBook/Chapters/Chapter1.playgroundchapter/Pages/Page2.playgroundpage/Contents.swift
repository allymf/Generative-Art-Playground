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
import PlaygroundSupport
import Foundation
import CoreGraphics

// Initial Settings Values
private let fontType: Font = .chalck
let text: String = " "

public let pixels = [Pixel(at: 11, with: 19.0)]

let liveView = PlaygroundPage.current.liveView as! PlaygroundRemoteLiveViewProxy
public typealias Position = Int
public typealias Color = Float

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
The first thing I wanna show to you is the bases of image processing. Using the images data to generate something upon it, create an infinity of creative possibilities. Like the creation artistic filters, color ordination, glitch art.
 
 Here's an example of one artistic filter I created using code
 
 # Image
 
 ### But how does it work?
 
 Well, normally you would iterate over a structure that contais every single pixel data from the image, and at each step do something with the pixel data, like analyzing it, changing it or using it to draw another image.
 
 
 ### Hands on:
 
 Down below there is a for in loop that iterates over and array of pixels.
 
 - Experiment:
 Here's what we're going to do
 
 1. On each iteration we are going to draw a shape, by using either `drawCircleWith` or `drawSquareWith`.
 
 2. We are going to pass to the selected function: the pixel’s **color**, its **positions**, and a **size** value
 
 3. After that you should Tap the big white button written **Pick an image** to select what we are going to analyse.
 
 4. Finally, tap the button **Run My Code**
 
 * callout(Tip):
 Start with a lower number for size, and then start to experiment with it on other executions. But keep in mind that the value should be greater than zero for something to be shown.
 
*/

for pixel in pixels {
    let color: Color = pixel.color
    let position: Position = pixel.position
    
    /*#-editable-code Tap to enter code*//*#-end-editable-code*/
}

/*:
 
 If everything went alright, you should now have a stylized version of the photo you just choose. Neat, ain't it? 😄
 
 If you want so, tap the three dots button up in the NavBar a select take a picture, so you can save you beatiful artwork. Maybe showoff to your friends by posting on social media 😜

 [Next: ASCII Art](@next)
 
 */
