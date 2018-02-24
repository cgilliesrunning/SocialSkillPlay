////
////  DataInputs.swift
////  MasterSocialSkillsPlay
////
////  Created by Cameron on 19/2/18.
////  Copyright © 2018 MasterSocialSkills. All rights reserved.
////
//
//import Foundation
//
class ArrayStructure{
    
    let sceneSelection : String
    let questionNumber : Int
    let answerNumber : Int
    let questionText : String
    let answerText : String
    
    init(scene: String, question: Int, answer: Int, qText: String, aText: String) {
        sceneSelection = scene
        questionNumber = question
        answerNumber = answer
        questionText = qText
        answerText = aText
    }
}

