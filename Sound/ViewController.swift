//
//  ViewController.swift
//  Sound
//
//  Created by 加島慈久 on 2021/04/01.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    //SoundFile read
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func drumtap() {
        drumSoundPlayer.currentTime = 0
        drumSoundPlayer.play()
    
    }
}

