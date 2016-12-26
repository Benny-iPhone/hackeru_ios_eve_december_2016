//
//  ViewController.swift
//  RadioPlayer
//
//  Created by Benny Davidovitz on 26/12/2016.
//  Copyright © 2016 xcoder.solutions. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player : AVPlayer?
    
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var volumeSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        volumeSlider.value = 0.7
        
        playPauseButton.layer.borderColor = UIColor.black.cgColor
        playPauseButton.layer.borderWidth = 1
        playPauseButton.layer.cornerRadius = 50
    }
    
    @IBAction func playPauseAction(_ sender: UIButton) {
        if player == nil{
            let url = URL(string: "http://streamer.akaver.com/streamgen.php?stream=skyplus&format=mp3&quality=hi")
            self.player = AVPlayer(url: url!)
            player?.volume = volumeSlider.value
            player?.play()
            
            sender.setTitle("Pause", for: .normal)
        } else {
            
            player?.pause()
            self.player = nil
            
            sender.setTitle("Play", for: .normal)
            
        }
    }
    
    @IBAction func volumeAction(_ sender: UISlider) {
        player?.volume = sender.value
    }

    


}









