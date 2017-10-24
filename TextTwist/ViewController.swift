//
//  ViewController.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate  {
    
    
    
    //UIView Stuff
    // Word Bank Label
    @IBOutlet weak var wordBankLabel: UILabel!
    
    // Guessing Box
    @IBOutlet weak var guessingBox: UITextField!
    
    // Message Label
    @IBOutlet weak var messageLabel: UILabel!
    
    // 3,4,5,6 Word Banks
    @IBOutlet weak var threeWordBank: UITextView!
    @IBOutlet weak var fourWordBank: UITextView!
    @IBOutlet weak var fiveWordBank: UITextView!
    @IBOutlet weak var sixWordBank: UITextView!
    
    var model = TextTwistModel() //lets you access the model
    
    
   override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
    
    
    
    
    
    //call funcs to do all that stuff with the outlets above
    
    //calls func to see if users input is correct
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //wordBankLabel.isHidden = false
        wordBankLabel.text = model.currentInfo.letters
        
        print(model.currentInfo.letters)
        
        guard let guessedWord = guessingBox.text else {
            return false
        }
        
        messageLabel.text = "Hey"
        
        //Changes messages based on whether word is good
        switch model.wordIsCorrect(usersWord: guessedWord) {
        case .correct:
         messageLabel.text = "Yay you did some shit"
        case .wrong:
            messageLabel.text = "You did shit but this word is wrong"
        case .alreadyGuessed:
            messageLabel.text = "You already wrote this"
        }
        return true
        
//        if model.wordIsCorrect(usersWord: guessedWord) == .correct {
//            //messageLabel.isHidden = false
//            messageLabel.text = "Yay you did some shit"
//            return true
//
//        } else if model.wordIsCorrect(usersWord: guessedWord) == .wrong {
//            //messageLabel.isHidden = false
//            messageLabel.text = "You did shit but this word is wrong"
//            return false
//
//        } else {
//            return false
//        }
//
//        return true
    }
    
    
}






//        //Changes messages based on whether word is good
//        if model.wordIsCorrect(usersWord: guessingBox.text!) == .correct {
//            print(messageLabel.text = "Yay you did some shit")
//            return true
//        } else if model.wordIsCorrect(usersWord: guessingBox.text!) == .wrong {
//            print(messageLabel.text = "You did shit but this word is wrong")
//            return false
//        } else {
//            return false
//        }


