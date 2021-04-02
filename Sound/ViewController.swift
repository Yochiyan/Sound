//
//  ViewController.swift
//  Sound
//
//  Created by 加島慈久 on 2021/04/01.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    //drum
    @IBOutlet var drumButton: UIButton!
    //piano
    @IBOutlet var pianoButton: UIButton!
    //guitar
    @IBOutlet var guitarButton: UIButton!
    
    //SoundFile drum
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    //SoundFile piano
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")! .data)
    
    //SoundFile guitar
    let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")! .data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //drumButton
    @IBAction func TouchDownDrumdrumtap() {
        drumButton.setImage(UIImage(named: "drumPlayingImage"),for: .normal)
        drumSoundPlayer.currentTime = 0
        drumSoundPlayer.play()
}
    @IBAction func touchUpDrumButtn() {
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
 //pianoButton
    @IBAction func touchDownPianotap() {
        pianoButton.setImage(UIImage(named:"pianoPlayingImage"), for: .normal)
        pianoSoundPlayer.currentTime = 0
        pianoSoundPlayer.play()
    }
    @IBAction func touchUPpianoButtn() {
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
}//guitarButton
    @IBAction func TouchDownGuitartap() {
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"),for: .normal)
        guitarSoundPlayer.currentTime = 0
        guitarSoundPlayer.play()
}
    @IBAction func touchUpGuitarButtn() {
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
    }
}

