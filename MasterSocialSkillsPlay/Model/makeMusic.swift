//
//  makeMusic.swift
//  MasterSocialSkillsPlay
//
//  Created by Cameron on 26/2/18.
//  Copyright © 2018 MasterSocialSkills. All rights reserved.
//

import Foundation
import AVFoundation


protocol PlayerDelegate : class {
    func soundFinished(_ sender: Any)
}

class MakeMusicClass : NSObject, AVAudioPlayerDelegate {
    

    static let shared = MakeMusicClass()
    var audioPlayer = AVAudioPlayer()
    weak var delegate : PlayerDelegate?

    override init() { }
    
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
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) { // *
        self.delegate?.soundFinished(self)
    }

}


