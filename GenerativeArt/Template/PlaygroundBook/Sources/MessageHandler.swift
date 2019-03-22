//
//  File.swift
//  Book_Sources
//
//  Created by Alysson Moreira on 17/03/19.
//

import PlaygroundSupport

class MessageHandler: PlaygroundRemoteLiveViewProxyDelegate {
    func remoteLiveViewProxy(
        _ remoteLiveViewProxy: PlaygroundRemoteLiveViewProxy,
        received message: PlaygroundValue
        ) {
        print("Received a message from the always-on live view", message)
    }
    
    func remoteLiveViewProxyConnectionClosed(_ remoteLiveViewProxy: PlaygroundRemoteLiveViewProxy) {}
}
