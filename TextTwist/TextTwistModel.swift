//
//  TextTwistModel.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

class TextTwistModel {
    
    enum trueOrFalse {
        case correct, wrong, alreadyGuessed
    }
    
    //something that randomizes the word being chosen and adds it to word label
    var currentInfo = WordData.allInfo[Int(arc4random_uniform(3))]

    //something that checks if user try is valid and then puts it in a box if true, says no if false
    func wordIsCorrect(usersWord: String) -> trueOrFalse {
        if currentInfo.words.contains(usersWord) {
            return .correct
        } else {
            return .wrong
        }
    }
    
    //something that makes keyboard disapear on return
    //something that takes letter used away from word label and adds back when delted from input
    //if all options of word are selected then push a new word and restart
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
