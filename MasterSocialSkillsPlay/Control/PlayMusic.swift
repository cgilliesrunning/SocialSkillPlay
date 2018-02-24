//
//  PlayMusic.swift
//  MasterSocialSkillsPlay
//
//  Created by Cameron on 20/2/18.
//  Copyright © 2018 MasterSocialSkills. All rights reserved.
//

import UIKit
import AVFoundation


class PlayMusic: AVAudioPlayer {
    
    var audioPlayer2 : AVAudioPlayer!
    

    
    func playFile (Selection: String) {
//        let soundURL = Bundle.main.url(forResource: "MenuAudio", withExtension: "mp3")
        
        abcd()
    }
    
    func abcd () {
        
            let soundURL2 = Bundle.main.url(forResource: "MenuAudio", withExtension: "mp3")
        
//        print (Selection)
        
        do {
            print (soundURL2)
            try audioPlayer2 = AVAudioPlayer(contentsOf: soundURL2!)
            audioPlayer2.play()
            
            
        }
        catch {
            print (error)
        }
        
    }
          
    }
