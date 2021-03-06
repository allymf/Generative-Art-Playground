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
The first thing I wanna show to you is the bases of image processing. Using the images data to generate something upon it, create an infinity of creative possibilities. Like the creation artistic filters, color analysis, glitch art.
 
 Here's an example of an image intervention I created using code:
 
 ![Photo of a man with long curly hair using rounded glasses in grayscale, followed by a photo of a red galaxy, both of them with arrow in the bottom pointin to a box written "My Filter" which also has a arrow coming from its bottom, pointing to a image that is the combination of both previously said photos in a double exposure technic](ImgFilterShowcase.png "Photo of a man with long curly hair using rounded glasses in grayscale, followed by a photo of a red galaxy, both of them with arrow in the bottom pointin to a box written 'My Filter' which also has a arrow coming from its bottom, pointing to a image that is the combination of both previously said photos in a double exposure technic")
 
 ### But how does it work?
 
 Well, normally you would iterate over a structure that contais every single pixel data from an image, and at each step do something with that data, like analyzing it, changing it or using it to draw another image.
 
 
 ### Hands on:
 
 Down below there is a for in loop that iterates over and array of pixels.
 
 - Experiment:
 Here's what we're going to do
 
    1. On each iteration we are going to draw a shape, by using either `drawCircleWith` or `drawSquareWith`.
 
    2. We are going to pass to the selected function: the pixel’s **color**, its **positions**, and a **size** value
 
 * callout(Tip):
 Start with a lower number for size, and then experiment with different values to see what happens. But remember to use values greater than zero for something to be shown.
 
*/

for pixel in pixels {
    let color: Color = pixel.color
    let position: Position = pixel.position
    
    /*#-editable-code Tap to enter code*//*#-end-editable-code*/
}

/*:
 3. After that you should Tap the big white button written **Pick an image** to select what we are going to analyse.
 
 4. Finally, tap the **Run My Code** button
 
 
 If everything went alright, you should now have a stylized version of the photo you just choose. Neat, ain't it? 😄
 
 If you want so, tap the three dots button up in the Nav Bar a select **Take Picture**, so you can save your artwork. Maybe show off to your friends on social media. 😜

 [Next: ASCII Art](@next)
 
 */
