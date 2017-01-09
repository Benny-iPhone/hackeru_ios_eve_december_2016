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
    
    @IBOutlet weak var stationsSegmentedControl: UISegmentedControl!
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var volumeSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        try? AVAudioSession.sharedInstance().setActive(true)
        
        do{
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        } catch{
            print(error)
        }
        // Do any additional setup after loading the view, typically from a nib.
        volumeSlider.value = 0.7
        
        playPauseButton.layer.borderColor = UIColor.black.cgColor
        playPauseButton.layer.borderWidth = 1
        playPauseButton.layer.cornerRadius = 50
    }
    
    func play(station : Station){
        self.player = AVPlayer(url: station.url())
        player?.volume = volumeSlider.value
        player?.play()
    }
    
    @IBAction func stationAction(_ sender: UISegmentedControl) {
        
        let index = sender.selectedSegmentIndex
        guard let station = Station(rawValue: index) else {
            return
        }
        
        guard player != nil else {
            //not playing at the moment
            return
        }
        /*
        if player == nil{
            return
        }
        */
        
        play(station: station)
        
        
        
    }
    
    @IBAction func playPauseAction(_ sender: UIButton) {
        let index = stationsSegmentedControl.selectedSegmentIndex
        guard let station = Station(rawValue: index) else {
            return
        }
        
        if player == nil{
            play(station: station)
            sender.setImage(#imageLiteral(resourceName: "pause"), for: .normal)
            //sender.setTitle("Pause", for: .normal)
        } else {
            
            player?.pause()
            self.player = nil
            
            sender.setImage(#imageLiteral(resourceName: "play"), for: .normal)
            //sender.setTitle("Play", for: .normal)
            
        }
    }
    
    @IBAction func volumeAction(_ sender: UISlider) {
        player?.volume = sender.value
    }

    


}









