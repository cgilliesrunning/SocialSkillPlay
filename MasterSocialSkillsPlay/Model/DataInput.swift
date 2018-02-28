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

    var arrayReference = 0
    
    let array1 = [10,11,12,13]
    let array2 = [20,21,22,23]
    let array3 = [30,31,32,33]
    let array4 = [40,41,42,43]
    let array5 = [50,51,52,53]
    let array6 = [60,61,62,63]
    
    let playgroundQuestionDictionary = [1 : "Let’s go down the slide",
                                      2 : "Do you want to play on the swings?",
                                      3 : "I’m going to climb on the monkey bars",
                                      4 : "What do you want to play on now?",
                                      5 : "Can you push me on the swings?",
                                      6 : "Do you want to play on the swings or the slide?"]
    
    let sandpitQuestionDictionary = [ 1 : "Do you want to build a sand castle?",
                                      2 : "Let's fill the digger up with sand",
                                      3 : "Do you want to dig with me?",
                                      4 : "Can you bury your feet in the sand?",
                                      5 : "What do you want to play with next?",
                                      6 : "You be the truck driver and I’ll be the digger"]
    
    let paintingQuestionDictionary = [ 1 : "Let’s paint a train",
                                       2 : "What’s your favourite colour to paint with?",
                                       3 : "What are you going to paint now?",
                                       4 : "Can you paint a dinosaur?",
                                       5 : "Show me your painting",
                                       6 : "Can I please use your red paint?"]
    
    let hideSeekQuestionDictionary = [ 1 : "Do you want to play hide and seek?",
                                      2 : "I’m going to pick my favourite hiding place",
                                      3 : "I’m going to hide under the bed",
                                      4 : "Can my friend play with us too?",
                                      5 : "This time I will search for you",
                                      6 : "Let’s all hide next to the lounge"]
    
    let playDohQuestionDictionary = [ 1 : "I’m going to roll the play-doh flat with the rolling pin",
                                      2 : "Which shape do you want to use?",
                                      3 : "Do you want some of my play-doh?",
                                      4 : "Can you make a snowman out of your play-doh?",
                                      5 : "Let’s roll all of the play-doh into one big ball",
                                      6 : "What do you want to make with your play-doh?"]
    
    let ridingBikesQuestionDictionary = [ 1 : "Do you want to ride your bike with me?",
                                      2 : "Let’s race to the tree",
                                      3 : "Can you ride all the way over the bridge?",
                                      4 : "Let’s stop for a drink",
                                      5 : "Where do you want to ride your bike?",
                                      6 : "I’m going to ring my bell"]

    let playgroundAnswerDictionary = [10 : "That sounds like fun",
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
    
    let sandpitAnswerDictionary = [ 10 : "Yes, let’s make a big one",
                                    11 : "Ok, let's make two sand castles",
                                    12 : "No, it's my turn not yours",
                                    13 : "You're not allowed to make a sand castle",
                                    20 : "Yes, let's fill it to the top",
                                    21 : "Ok, then we can tip it all out",
                                    22 : "No, you don't know how to do it",
                                    23 : "I don’t like that game",
                                    30 : "Cool, we can dig together",
                                    31 : "Ok, here is a spade, let’s go",
                                    32 : "I'm doing it, not you",
                                    33 : "It's not fair, I want to do it by myself",
                                    40 : "Yes, it feels cool on my feet let’s do it",
                                    41 : "Can you show me how you do it?",
                                    42 : "I’m not telling you",
                                    43 : "I don’t want to play with you",
                                    50 : "I would love to play with the trucks in the sandpit",
                                    51 : "We could make more sand castles with the bucket",
                                    52 : "These are my toys not yours",
                                    53 : "You’re not allowed in the sandpit",
                                    60 : "Ok and we can build a road together",
                                    61 : "I can drive the truck to pick up the sand for you",
                                    62 : "No, I am going to be the digger not you",
                                    63 : "I wont play unless I have the digger and the truck"]
    
    let paintingAnswerDictionary = [10 : "Yes and we can have smoke coming out the top",
                                    11 : "Ok and we can paint the train driver too",
                                    12 : "I don’t want to paint with you",
                                    13 : "Trains are boring",
                                    20 : "My favourite colour is blue, like the sky",
                                    21 : "I like green paint, do you want to use some?",
                                    22 : "I’m not telling you",
                                    23 : "I like yellow and you can’t use any of my paint",
                                    30 : "I’m going to paint a cow on a farm",
                                    31 : "I’m going to paint a lake with a fish in it",
                                    32 : "I don’t care",
                                    33 : "I’m not going to show you",
                                    40 : "Yes, they're my favourite thing to paint",
                                    41 : "I'll show you, the one I paint has big teeth",
                                    42 : "I’m better at painting than you",
                                    43 : "I bet you can’t paint a dinosaur",
                                    50 : "Here it is, I painted a motorbike",
                                    51 : "See my painting, I painted you riding a horse",
                                    52 : "No, you can't see it",
                                    53 : "I’m not going to show you",
                                    60 : "Yes, we can share",
                                    61 : "Sure you can, I have heaps",
                                    62 : "No, I don't want to share",
                                    63 : "No, red is my favourite colour"]

let playDohAnswerDictionary =     [10 : "That's fun, I'm going to do that too",
                                   11 : "Cool, can I please have a turn?",
                                   12 : "No, it's my rolling pin",
                                   13 : "I'm using the rolling pin, not you",
                                   20 : "I might use the star shape",
                                   21 : "I might use the star shape",
                                   22 : "They are my shapes, you can't use them",
                                   23 : "I’m not going to let you play",
                                   30 : "Yes please, I need some more",
                                   31 : "Thanks for asking, but I have enough",
                                   32 : "I don’t like your play-doh",
                                   33 : "It's all mine, not yours",
                                   40 : "Yes, see, he has a hat and a big nose",
                                   41 : "I'd like to, can you show me how?",
                                   42 : "You make your own snowman",
                                   43 : "I’m playing by myself",
                                   50 : "That sounds like fun",
                                   51 : "Yes, let's see how big we can make it",
                                   52 : "No, you're not touching my play-doh",
                                   53 : "It’s not your turn to pick the game",
                                   60 : "I like horses, so I am going to make one",
                                   61 : "A dinosaur, do you want to help?",
                                   62 : "Nothing, this is boring",
                                   63 : "I’m not going to tell you"]
    
let ridingBikesAnswerDictionary = [10 : "Yes, I'd love to",
                                     11 : "That would be fun, let’s go",
                                     12 : "I’m not your friend",
                                     13 : "You cheat all the time",
                                     20 : "Ok, ready, set, go!",
                                     21 : "Ok, let’s go really fast",
                                     22 : "No, you're too slow",
                                     23 : "I don’t want to race with you",
                                     30 : "Yes, do you want to watch?",
                                     31 : "Let’s go together",
                                     32 : "Yes, but you're not allowed to come",
                                     33 : "Only I tell you what to do on your bike",
                                     40 : "Ok, I’m thirsty too",
                                     41 : "Do you want me to hold your bike while you have a drink?",
                                     42 : "No, I'm not stopping",
                                     43 : "You can’t stop until I do",
                                     50 : "Over the bridge, do you want to come?",
                                     51 : "Around the tree, let’s have a race",
                                     52 : "I’m not riding with you",
                                     53 : "I don’t want to ride anymore",
                                     60 : "Me too, that sounds funny",
                                     61 : "Let’s ring our bells together",
                                     62 : "That’s a dumb idea",
                                     63 : "Stop making that noise"]
    
let hideSeekAnswerDictionary = [    10 : "I love hide and seek, let’s play",
                                    11 : "Ok, you hide and I’ll count to 10",
                                    12 : "No, I only play the games I want to",
                                    13 : "You don’t hide properly",
                                    20 : "Ok and I will try and find you",
                                    21 : "I won’t look until I’ve counted to 10",
                                    22 : "That's not fair, I don't know where that is",
                                    23 : "That’s going to be a dumb place to hide",
                                    30 : "I’m going to come looking for you",
                                    31 : "You shouldn't tell me, it's a secret",
                                    32 : "You wrecked the game",
                                    33 : "You’re no fun at this game",
                                    40 : "Yes, let’s all play together",
                                    41 : "That sounds fun!",
                                    42 : "I don’t like your friend",
                                    43 : "This game is only for you and I ",
                                    50 : "Ok, I'm going to hide somewhere you can't find me",
                                    51 : "Yay, it’s your turn, I love to hide",
                                    52 : "No, I only want to search for you",
                                    53 : "I don’t want you to search for me",
                                    60 : "That sounds fun! ",
                                    61 : "Ok, but next time can we hide under the table",
                                    62 : "That’s a dumb spot to hide",
                                    63 : "I’m not playing hide and seek with you"]


    
    init (){
        
        var answerOne : Int = 0
        var answerTwo : Int = 0
        var answerThree : Int = 0
        var answerFour : Int = 0
        var answerFive : Int = 0
        var answerSix : Int = 0
        
        let shuffledQuestions  = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [1,2,3,4,5,6]) as! [Int]
        
//        let shuffledAnswers1 : [Int] = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [10,11,12,13]) as! [Int]
//        let shuffledAnswers2 : [Int] = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [20,21,22,23]) as! [Int]
//        let shuffledAnswers3 : [Int] = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [30,31,32,33]) as! [Int]
//        let shuffledAnswers4 : [Int] = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [40,41,42,43]) as! [Int]
//        let shuffledAnswers5 : [Int] = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [50,51,52,53]) as! [Int]
//        let shuffledAnswers6 : [Int] = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: [60,61,62,63]) as! [Int]
        
//        let shuffledAnswers = [shuffledAnswers1[0],shuffledAnswers2[0],shuffledAnswers3[0],shuffledAnswers4[0],shuffledAnswers5[0],shuffledAnswers6[0]]
        
        let questionOne = shuffledQuestions[0]
        let questionTwo = shuffledQuestions[1]
        let questionThree = shuffledQuestions[2]
        let questionFour = shuffledQuestions[3]
        let questionFive = shuffledQuestions[4]
        let questionSix = shuffledQuestions[5]
    
        if shuffledQuestions[0] == 1 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerOne = array1[arrayReference]
        }
        else if shuffledQuestions[0] == 2 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerOne = array2[arrayReference]
        }
        else if shuffledQuestions[0] == 3 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerOne = array3[arrayReference]
        }
        else if shuffledQuestions[0] == 4 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerOne = array4[arrayReference]
        }
        else if shuffledQuestions[0] == 5 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerOne = array5[arrayReference]
        }
        else if shuffledQuestions[0] == 6 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerOne = array6[arrayReference]
        }
        
        if shuffledQuestions[1] == 1 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerTwo = array1[arrayReference]
        }
        else if shuffledQuestions[1] == 2 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerTwo = array2[arrayReference]
        }
        else if shuffledQuestions[1] == 3 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerTwo = array3[arrayReference]
        }
        else if shuffledQuestions[1] == 4 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerTwo = array4[arrayReference]
        }
        else if shuffledQuestions[1] == 5 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerTwo = array5[arrayReference]
        }
        else if shuffledQuestions[1] == 6 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerTwo = array6[arrayReference]
        }

        if shuffledQuestions[2] == 1 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerThree = array1[arrayReference]
        }
        else if shuffledQuestions[2] == 2 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerThree = array2[arrayReference]
        }
        else if shuffledQuestions[2] == 3 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerThree = array3[arrayReference]
        }
        else if shuffledQuestions[2] == 4 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerThree = array4[arrayReference]
        }
        else if shuffledQuestions[2] == 5 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerThree = array5[arrayReference]
        }
        else if shuffledQuestions[2] == 6 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerThree = array6[arrayReference]
        }

        if shuffledQuestions[3] == 1 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerFour = array1[arrayReference]
        }
        else if shuffledQuestions[3] == 2 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerFour = array2[arrayReference]
        }
        else if shuffledQuestions[3] == 3 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerFour = array3[arrayReference]
        }
        else if shuffledQuestions[3] == 4 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerFour = array4[arrayReference]
        }
        else if shuffledQuestions[3] == 5 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerFour = array5[arrayReference]
        }
        else if shuffledQuestions[3] == 6 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerFour = array6[arrayReference]
        }

        if shuffledQuestions[4] == 1 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerFive = array1[arrayReference]
        }
        else if shuffledQuestions[4] == 2 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerFive = array2[arrayReference]
        }
        else if shuffledQuestions[4] == 3 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerFive = array3[arrayReference]
        }
        else if shuffledQuestions[4] == 4 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerFive = array4[arrayReference]
        }
        else if shuffledQuestions[4] == 5 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerFive = array5[arrayReference]
        }
        else if shuffledQuestions[4] == 6 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerFive = array6[arrayReference]
        }

        if shuffledQuestions[5] == 1 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerSix = array1[arrayReference]
        }
        else if shuffledQuestions[5] == 2 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerSix = array2[arrayReference]
        }
        else if shuffledQuestions[5] == 3 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerSix = array3[arrayReference]
        }
        else if shuffledQuestions[5] == 4 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerSix = array4[arrayReference]
        }
        else if shuffledQuestions[5] == 5 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerSix = array5[arrayReference]
        }
        else if shuffledQuestions[5] == 6 {
            arrayReference = 1 - Int(arc4random_uniform(6))
            answerSix = array6[arrayReference]
        }

    

//        let answerOne = shuffledAnswers[0]
//        let answerTwo = shuffledAnswers[1]
//        let answerThree = shuffledAnswers[2]
//        let answerFour = shuffledAnswers[3]
//        let answerFive = shuffledAnswers[4]
//        let answerSix = shuffledAnswers[5]
        
        print (questionOne, questionTwo, questionThree, questionFour, questionFive, questionSix, answerOne, answerTwo, answerThree, answerFour, answerFive, answerSix)
        
        if Selection == "Painting" {
        list.append(ArrayStructure(scene: Selection, question: questionOne, answer: answerOne, qText: paintingQuestionDictionary[questionOne]!, aText: paintingAnswerDictionary[answerOne]!))
        list.append(ArrayStructure(scene: Selection,question: questionTwo, answer: answerTwo, qText: paintingQuestionDictionary[questionTwo]!, aText: paintingAnswerDictionary[answerTwo]!))
        list.append(ArrayStructure(scene: Selection,question: questionThree, answer: answerThree, qText: paintingQuestionDictionary[questionThree]!, aText: paintingAnswerDictionary[answerThree]!))
        list.append(ArrayStructure(scene: Selection,question: questionFour, answer: answerFour, qText: paintingQuestionDictionary[questionFour]!, aText: paintingAnswerDictionary[answerFour]!))
        list.append(ArrayStructure(scene: Selection,question: questionFive, answer: answerFive, qText: paintingQuestionDictionary[questionFive]!, aText: paintingAnswerDictionary[answerFive]!))
        list.append(ArrayStructure(scene: Selection,question: questionSix, answer: answerSix, qText: paintingQuestionDictionary[questionSix]!, aText: paintingAnswerDictionary[answerSix]!))
        }
        
        else if Selection == "PlayDoh" {
        list.append(ArrayStructure(scene: Selection, question: questionOne, answer: answerOne, qText: playDohQuestionDictionary[questionOne]!, aText: playDohAnswerDictionary[answerOne]!))
        list.append(ArrayStructure(scene: Selection,question: questionTwo, answer: answerTwo, qText: playDohQuestionDictionary[questionTwo]!, aText: playDohAnswerDictionary[answerTwo]!))
        list.append(ArrayStructure(scene: Selection,question: questionThree, answer: answerThree, qText: playDohQuestionDictionary[questionThree]!, aText: playDohAnswerDictionary[answerThree]!))
        list.append(ArrayStructure(scene: Selection,question: questionFour, answer: answerFour, qText: playDohQuestionDictionary[questionFour]!, aText: playDohAnswerDictionary[answerFour]!))
        list.append(ArrayStructure(scene: Selection,question: questionFive, answer: answerFive, qText: playDohQuestionDictionary[questionFive]!, aText: playDohAnswerDictionary[answerFive]!))
        list.append(ArrayStructure(scene: Selection,question: questionSix, answer: answerSix, qText: playDohQuestionDictionary[questionSix]!, aText: playDohAnswerDictionary[answerSix]!))
        }
        
        else if Selection == "Sandpit" {
        list.append(ArrayStructure(scene: Selection,question: questionOne, answer: answerOne, qText: sandpitQuestionDictionary[questionOne]!, aText: sandpitAnswerDictionary[answerOne]!))
        list.append(ArrayStructure(scene: Selection,question: questionTwo, answer: answerTwo, qText: sandpitQuestionDictionary[questionTwo]!, aText: sandpitAnswerDictionary[answerTwo]!))
        list.append(ArrayStructure(scene: Selection,question: questionThree, answer: answerThree, qText: sandpitQuestionDictionary[questionThree]!, aText: sandpitAnswerDictionary[answerThree]!))
        list.append(ArrayStructure(scene: Selection,question: questionFour, answer: answerFour, qText: sandpitQuestionDictionary[questionFour]!, aText: sandpitAnswerDictionary[answerFour]!))
        list.append(ArrayStructure(scene: Selection,question: questionFive, answer: answerFive, qText: sandpitQuestionDictionary[questionFive]!, aText: sandpitAnswerDictionary[answerFive]!))
        list.append(ArrayStructure(scene: Selection,question: questionSix, answer: answerSix, qText: sandpitQuestionDictionary[questionSix]!, aText: sandpitAnswerDictionary[answerSix]!))
        }
        
        else if Selection == "RidingBikes" {
        list.append(ArrayStructure(scene: Selection,question: questionOne, answer: answerOne, qText: ridingBikesQuestionDictionary[questionOne]!, aText: ridingBikesAnswerDictionary[answerOne]!))
        list.append(ArrayStructure(scene: Selection,question: questionTwo, answer: answerTwo, qText: ridingBikesQuestionDictionary[questionTwo]!, aText: ridingBikesAnswerDictionary[answerTwo]!))
        list.append(ArrayStructure(scene: Selection,question: questionThree, answer: answerThree, qText: ridingBikesQuestionDictionary[questionThree]!, aText: ridingBikesAnswerDictionary[answerThree]!))
        list.append(ArrayStructure(scene: Selection,question: questionFour, answer: answerFour, qText: ridingBikesQuestionDictionary[questionFour]!, aText: ridingBikesAnswerDictionary[answerFour]!))
        list.append(ArrayStructure(scene: Selection,question: questionFive, answer: answerFive, qText: ridingBikesQuestionDictionary[questionFive]!, aText: ridingBikesAnswerDictionary[answerFive]!))
        list.append(ArrayStructure(scene: Selection,question: questionSix, answer: answerSix, qText: ridingBikesQuestionDictionary[questionSix]!, aText: ridingBikesAnswerDictionary[answerSix]!))
        }
        
        else if Selection == "HideSeek" {
        list.append(ArrayStructure(scene: Selection,question: questionOne, answer: answerOne, qText: hideSeekQuestionDictionary[questionOne]!, aText: hideSeekAnswerDictionary[answerOne]!))
        list.append(ArrayStructure(scene: Selection,question: questionTwo, answer: answerTwo, qText: hideSeekQuestionDictionary[questionTwo]!, aText: hideSeekAnswerDictionary[answerTwo]!))
        list.append(ArrayStructure(scene: Selection,question: questionThree, answer: answerThree, qText: hideSeekQuestionDictionary[questionThree]!, aText: hideSeekAnswerDictionary[answerThree]!))
        list.append(ArrayStructure(scene: Selection,question: questionFour, answer: answerFour, qText: hideSeekQuestionDictionary[questionFour]!, aText: hideSeekAnswerDictionary[answerFour]!))
        list.append(ArrayStructure(scene: Selection,question: questionFive, answer: answerFive, qText: hideSeekQuestionDictionary[questionFive]!, aText: hideSeekAnswerDictionary[answerFive]!))
        list.append(ArrayStructure(scene: Selection,question: questionSix, answer: answerSix, qText: hideSeekQuestionDictionary[questionSix]!, aText: hideSeekAnswerDictionary[answerSix]!))
        }
        
        else if Selection == "Playground" {
        list.append(ArrayStructure(scene: Selection,question: questionOne, answer: answerOne, qText: playgroundQuestionDictionary[questionOne]!, aText: playgroundAnswerDictionary[answerOne]!))
        list.append(ArrayStructure(scene: Selection,question: questionTwo, answer: answerTwo, qText: playgroundQuestionDictionary[questionTwo]!, aText: playgroundAnswerDictionary[answerTwo]!))
        list.append(ArrayStructure(scene: Selection,question: questionThree, answer: answerThree, qText: playgroundQuestionDictionary[questionThree]!, aText: playgroundAnswerDictionary[answerThree]!))
        list.append(ArrayStructure(scene: Selection,question: questionFour, answer: answerFour, qText: playgroundQuestionDictionary[questionFour]!, aText: playgroundAnswerDictionary[answerFour]!))
        list.append(ArrayStructure(scene: Selection,question: questionFive, answer: answerFive, qText: playgroundQuestionDictionary[questionFive]!, aText: playgroundAnswerDictionary[answerFive]!))
        list.append(ArrayStructure(scene: Selection,question: questionSix, answer: answerSix, qText: playgroundQuestionDictionary[questionSix]!, aText: playgroundAnswerDictionary[answerSix]!))
        }
        
    }
}
