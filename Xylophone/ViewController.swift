//
//  ViewController.swift
//  Xylophone
//


import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
           
        playSound(key: sender.currentTitle!.description)
            sender.backgroundColor = sender.backgroundColor?.withAlphaComponent(CGFloat(0.5))
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
        
            sender.backgroundColor = sender.backgroundColor?.withAlphaComponent(CGFloat(1))
    
        }
     
                   
    }
    
    var player: AVAudioPlayer!

    func playSound(key: String) {
         
        
                 let url = Bundle.main.url(forResource: key, withExtension: "wav")
                 player = try! AVAudioPlayer(contentsOf: url!)
                 player.play()
                         
             }
         
}
