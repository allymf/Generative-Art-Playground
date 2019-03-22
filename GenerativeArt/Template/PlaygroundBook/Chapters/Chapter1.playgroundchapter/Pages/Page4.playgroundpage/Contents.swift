//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//


//#-end-hidden-code
import PlaygroundSupport

let str = "Musica"

let liveView = PlaygroundPage.current.liveView as! PlaygroundRemoteLiveViewProxy
liveView.send(.string(str))



