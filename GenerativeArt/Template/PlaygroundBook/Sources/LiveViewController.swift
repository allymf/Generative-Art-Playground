//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  An auxiliary source file which is part of the book-level auxiliary sources.
//  Provides the implementation of the "always-on" live view.
//

import UIKit
import PlaygroundSupport

@objc(Book_Sources_LiveViewController)
public class LiveViewController: UIViewController, PlaygroundLiveViewMessageHandler, PlaygroundLiveViewSafeAreaContainer {
    
    var lbDebug: UILabel!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let label = (self.view.subviews.filter {$0.restorationIdentifier == "lbDebug"}).first as? UILabel else { fatalError("Carai Burracha") }
        self.lbDebug = label
        
        self.lbDebug.text = "Esperando mensagem"
        

    }
    
    
    public func liveViewMessageConnectionOpened() {
        // Implement this method to be notified when the live view message connection is opened.
        // The connection will be opened when the process running Contents.swift starts running and listening for messages.
        
        self.lbDebug.text = "Abriu Conexão"
    }
    
    public func liveViewMessageConnectionClosed() {
        // Implement this method to be notified when the live view message connection is closed.
        // The connection will be closed when the process running Contents.swift exits and is no longer listening for messages.
        // This happens when the user's code naturally finishes running, if the user presses Stop, or if there is a crash.
        //self.lbDebug.text = "Fechou Conexão"
    }
 

    public func receive(_ message: PlaygroundValue) {
        // Implement this method to receive messages sent from the process running Contents.swift.
        // This method is *required* by the PlaygroundLiveViewMessageHandler protocol.
        // Use this method to decode any messages sent as PlaygroundValue values and respond accordingly.
        
        self.lbDebug.text = "Recebeu"
        
        switch message {
        case .string(let value):
            self.lbDebug.text = value
        default:
            self.lbDebug.text = "Carai Burracha"
        }
        
    }
}
