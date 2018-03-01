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
    

    static let shared = MakeMusicClass()
    var audioPlayer = AVAudioPlayer()

    override init() { }
    
//    func makeNoise (Selection: String) { //play the selected media play
//        let soundURL = Bundle.main.url(forResource: Selection, withExtension: "mp3")
//            do {
//                try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
//                audioPlayer.play()
//                print (audioPlayer)
//
//                }
//        catch {
//            print (error)
//            }
//        }
    
    func setup(Selection: String) {
        do {
            audioPlayer =  try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: Selection, ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            
        } catch {
            print (error)
        }
    }
    
    func play() {
        audioPlayer.play()
    }
    
    func stop() {
        audioPlayer.stop()
        audioPlayer.currentTime = 0 // I usually reset the song when I stop it. To pause it create another method and call the pause() method on the audioPlayer.
        audioPlayer.prepareToPlay()
    }
    
    func pause() {
        audioPlayer.pause()
        audioPlayer.currentTime = 0 // I usually reset the song when I stop it. To pause it create another method and call the pause() method on the audioPlayer.
        audioPlayer.prepareToPlay()
    }
    

}


