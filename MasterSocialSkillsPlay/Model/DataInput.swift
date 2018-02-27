////
////  BuildRandomArray.swift
////  MasterSocialSkillsPlay
////
////  Created by Cameron on 19/2/18.
////  Copyright © 2018 MasterSocialSkills. All rights reserved.
////
//
//import Foundation
import GameplayKit


class BuildRandomArrays {
    
    var list = [ArrayStructure]()
    let Selection = sceneSelection
    
    
    let paintingQuestionDictionary = [1 : "Let’s go down the slide",
                                      2 : "Do you want to play on the swings?",
                                      3 : "I’m going to climb on the monkey bars",
                                      4 : "What do you want to play on now?",
                                      5 : "Can you push me on the swings?",
                                      6 : "Do you want to play on the swings or the slide?"]

    let paintingAnswerDictionary = [10 : "That sounds like fun",
                                    11 : "Ok, let's see who can go the fastest",
                                    12 : "I don’t want to play with you",
                                    13 : "I’m playing by myself",
                                    20 : "Yes, I want to see how high I can go",
                                    21 : "Ok, let's take turns pushing each other",
                                    22 : "No, you have to play on the slide",
                                    23 : "The swings are boring",
                                    30 : "I love the monkey bars",
                                    31 : "Let’s climb together it’s fun",
                                    32 : "Only I can play on her",
                                    33 : "You’re no good at the monkey bars",
                                    40 : "Let’s go on the slide it’s fun",
                                    41 : "Let’s climb the monkey bars together",
                                    42 : "I’m not playing anymore",
                                    43 : "I’m not telling you",
                                    50 : "Yes, I can push you on the swings",
                                    51 : "Ok, then you can push me",
                                    52 : "No, do it yourself",
                                    53 : "No, you need to push me",
                                    60 : "I really want to play on the slide",
                                    61 : "The swings are fun, let’s go",
                                    62 : "Neither, they're both boring",
                                    63 : "I don’t want to play with you"]

//
//
    init (){
        
        

        let shuffledQuestions  = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [1,2,3,4,5,6]) as! [Int]
        
        let shuffledAnswers1 : [Int] = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [10,11,12,13]) as! [Int]
        let shuffledAnswers2 : [Int] = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [20,21,22,23]) as! [Int]
        let shuffledAnswers3 : [Int] = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [30,31,32,33]) as! [Int]
        let shuffledAnswers4 : [Int] = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [40,41,42,43]) as! [Int]
        let shuffledAnswers5 : [Int] = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [50,51,52,53]) as! [Int]
        let shuffledAnswers6 : [Int] = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [60,61,62,63]) as! [Int]
        
        let shuffledAnswers = [shuffledAnswers1[0],shuffledAnswers2[0],shuffledAnswers3[0],shuffledAnswers4[0],shuffledAnswers5[0],shuffledAnswers6[0]]
        
        let questionOne = shuffledQuestions[0]
        let questionTwo = shuffledQuestions[1]
        let questionThree = shuffledQuestions[2]
        let questionFour = shuffledQuestions[3]
        let questionFive = shuffledQuestions[4]
        let questionSix = shuffledQuestions[5]
        
        let answerOne = shuffledAnswers[0]
        let answerTwo = shuffledAnswers[1]
        let answerThree = shuffledAnswers[2]
        let answerFour = shuffledAnswers[3]
        let answerFive = shuffledAnswers[4]
        let answerSix = shuffledAnswers[5]
        
        print (questionOne, questionTwo, questionThree, questionFour, questionFive, questionSix, answerOne, answerTwo, answerThree, answerFour, answerFive, answerSix)
        
        list.append(ArrayStructure(scene: Selection, question: questionOne, answer: answerOne, qText: paintingQuestionDictionary[questionOne]!, aText: paintingAnswerDictionary[answerOne]!))
        list.append(ArrayStructure(scene: Selection,question: questionTwo, answer: answerTwo, qText: paintingQuestionDictionary[questionTwo]!, aText: paintingAnswerDictionary[answerTwo]!))
        list.append(ArrayStructure(scene: Selection,question: questionThree, answer: answerThree, qText: paintingQuestionDictionary[questionThree]!, aText: paintingAnswerDictionary[answerThree]!))
        list.append(ArrayStructure(scene: Selection,question: questionFour, answer: answerFour, qText: paintingQuestionDictionary[questionFour]!, aText: paintingAnswerDictionary[answerFour]!))
        list.append(ArrayStructure(scene: Selection,question: questionFive, answer: answerFive, qText: paintingQuestionDictionary[questionFive]!, aText: paintingAnswerDictionary[answerFive]!))
        list.append(ArrayStructure(scene: Selection,question: questionSix, answer: answerSix, qText: paintingQuestionDictionary[questionSix]!, aText: paintingAnswerDictionary[answerSix]!))
        
    }
    
}
