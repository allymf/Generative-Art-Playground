//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
//#-end-hidden-code
import PlaygroundSupport
import Foundation
import CoreGraphics

// Initial Settings Values
var mode: DrawMode = .shape
var shape: ShapeType = .circle
var fontType: Font = .chalck
var size: Double = 0.0
var step: Double = 0.0
var text: String = ""

var config: [Pixel] = [Pixel]()
config.append(Pixel(at: Position(x:0,y:0), with: Color(red: 45, green: 122, blue: 23)))
let pixels = config

let liveView = PlaygroundPage.current.liveView as! PlaygroundRemoteLiveViewProxy

func drawCircleWith(color: Color, at position: Position)
{
var settings = CanvasSettings(mode: .shape, shape: .circle, font: fontType, size: size, step: step, text: text)
let data = NSKeyedArchiver.archivedData(withRootObject: settings)
liveView.send(.data(data))
}

func drawSquareWith(color: Color, at position: Position) {
var settings = CanvasSettings(mode: .shape, shape: .square, font: fontType, size: size, step: step, text: text)
let data = NSKeyedArchiver.archivedData(withRootObject: settings)
    liveView.send(.data(data))
liveView.send(.data(data))
}

func displayCharacter(_ character: String, at position: Position) {
var settings = CanvasSettings(mode: .text, shape: .circle, font: fontType, size: size, step: step, text: character)
let data = NSKeyedArchiver.archivedData(withRootObject: settings)
liveView.send(.data(data))
}



// Mode
mode = .shape

// Shape
shape = .circle


// Text
text = "WWDC"
fontType = .chalck
size = 20


// The time interval between each draw
step = 0.02


for pixel in pixels {

// drawCircleWith(color: pixel.color, at: pixel.position)
//
//     drawSquareWith(color: pixel.color, at: pixel.position)
//
//     displayCharacter("a", at:pixel.position)

}




//var settings = CanvasSettings(mode: mode, shape: shape, font: fontType, size: size, step: step, text: text)
//let data = NSKeyedArchiver.archivedData(withRootObject: settings)
//liveView.send(.data(data))

//#-hidden-code


//#-end-hidden-code

