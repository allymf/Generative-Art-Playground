//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
import PlaygroundSupport

let str = "Musica"

let liveView = PlaygroundPage.current.liveView as! PlaygroundRemoteLiveViewProxy
liveView.send(.string(str))

//#-end-hidden-code
//#-hidden-code

// This Won't be shown

//#-end-hidden-code
//#-hidden-code
// Beneath there is a markdown block
//#-end-hidden-code
/*:
 
 # Title
 ## Subtitle
 
 ### Paragraph
 
 Normal Text
 
 - Important:
 There are some other kinds of highlights.
 
 - Note:
 Give me an E Major, conductor.
 
 + Important:
 This is very cool.
 
 + Example:
 This is an example.
 
 # Italic:
 *This text is italic*
 
 # Bold:
 **This text is bold**
 
 # Monospaced:
 `This text is bold`
 
 * callout(Tip):
 This is a precious tip
 
 * callout(Custom):
 This is a custom callout
 
 # Photo:
 ![Description of Photo](Alysson.HEIC "Um cara diferenciado")
 
 # List:
 * First item
 * Second Item
 
 # Numbered List:
 1. First item
 2. Second Item
 
 # Link to Web:
 [Apple Site](htttp://www.apple.com)
 
 # Link to other Pages:
 [Next Page: Num Sei](@next)
 
 
 */
