//
//  AudioLiveViewController.swift
//  Book_Sources
//
//  Created by Alysson Moreira on 17/03/19.
//

import UIKit
import AVFoundation

@objc(Book_Sources_AudioLiveViewController)
class AudioLiveViewController: UIViewController {

    var lbAudio: UILabel!
    
    var ambientSound: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        guard let label = (self.view.subviews.filter {$0.restorationIdentifier == "lbAudio"}).first as? UILabel else { fatalError("Carai Burracha") }
        self.lbAudio = label
        
        self.lbAudio.text = "Esperando mensagem"
        
        
      
        
            
        
        prepareAudio()
        
        
    }
    
  
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.ambientSound?.play()
        
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.ambientSound?.pause()
        playBackground()
        super.viewWillDisappear(animated)
        
    }
    
    
    @objc func playBackground() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(250)) {
            self.ambientSound?.pause()
        
    }
        
        
}
    
    func prepareAudio() {
        
        guard let url: URL = Bundle.main.url(forResource: "First", withExtension: "m4a") else {
            fatalError("Couldn't create url from ambient sound")
        }
        
        do {
            self.ambientSound = try AVAudioPlayer(contentsOf: url)
            self.ambientSound?.numberOfLoops = -1
            self.ambientSound?.volume = 0.2
            
        } catch {
            fatalError("Couldn't instantiate audioplayer from ambient url")
        }
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
