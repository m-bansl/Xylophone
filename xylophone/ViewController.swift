//
//  ViewController.swift
//  xylophone
//
//  Created by Mehak Bansal on 09/04/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func keyButtonPressed(_ sender: UIButton) {
        
        let currentTitle = sender.currentTitle!
        playsound(soundName: currentTitle)
        
    }
    
    func playsound(soundName: String){
        
        let url = Bundle.main.url(forResource:soundName , withExtension: ".wav")!
        do {
            player = try! AVAudioPlayer(contentsOf: url)
            
            guard let player = player else{
                return
            }
            player.prepareToPlay()
            player.play()
            
            
        }
        
    }
    
    
}

