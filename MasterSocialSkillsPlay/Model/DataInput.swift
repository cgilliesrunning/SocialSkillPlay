////
////  BuildRandomArray.swift
////  MasterSocialSkillsPlay
////
////  Created by Cameron on 19/2/18.
////  Copyright © 2018 MasterSocialSkills. All rights reserved.
////
//
import Foundation
import GameplayKit


class BuildRandomArrays {
    
    var list = [ArrayStructure]()
    var Selection = sceneSelection
    
    init (){

        let shuffledQuestions  = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [1,2,3,4,5,6]) as! [Int]
        
        let shuffledAnswers1 : [Int] = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [10,11,12,13]) as! [Int]
        let shuffledAnswers2 : [Int] = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [20,21,22,23]) as! [Int]
        let shuffledAnswers3 : [Int] = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [30,31,32,33]) as! [Int]
        let shuffledAnswers4 : [Int] = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [40,41,42,43]) as! [Int]
        let shuffledAnswers5 : [Int] = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [50,51,52,53]) as! [Int]
        let shuffledAnswers6 : [Int] = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [60,61,62,63]) as! [Int]
        
        let shuffledAnswers = [shuffledAnswers1[0],shuffledAnswers2[0],shuffledAnswers3[0],shuffledAnswers4[0],shuffledAnswers5[0],shuffledAnswers6[0]]
        
        list.append(ArrayStructure(scene: Selection, question: shuffledQuestions[0], answer: shuffledAnswers[0], qText: "question string1", aText: "answer string1"))
        list.append(ArrayStructure(scene: Selection,question: shuffledQuestions[1], answer: shuffledAnswers[1], qText: "question string2", aText: "answer string2"))
        list.append(ArrayStructure(scene: Selection,question: shuffledQuestions[2], answer: shuffledAnswers[2], qText: "question string3", aText: "answer string3"))
        list.append(ArrayStructure(scene: Selection,question: shuffledQuestions[3], answer: shuffledAnswers[3], qText: "question string4", aText: "answer string4"))
        list.append(ArrayStructure(scene: Selection,question: shuffledQuestions[4], answer: shuffledAnswers[4], qText: "question string5", aText: "answer string5"))
        list.append(ArrayStructure(scene: Selection,question: shuffledQuestions[5], answer: shuffledAnswers[5], qText: "question string6", aText: "answer string6"))
        
    }
}
