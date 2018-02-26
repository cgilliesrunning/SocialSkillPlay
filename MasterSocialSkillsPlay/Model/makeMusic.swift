//
//  makeMusic.swift
//  MasterSocialSkillsPlay
//
//  Created by Cameron on 26/2/18.
//  Copyright © 2018 MasterSocialSkills. All rights reserved.
//

import Foundation
import AVFoundation


class MakeMusicClass : NSObject, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    
    func makeNoise (Selection: String) { //play the selected media play
        let soundURL = Bundle.main.url(forResource: Selection, withExtension: "mp3")
            do {
                try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
                audioPlayer.play()
                }
        catch {
            print (error)
            }
        }
}

