//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Our strings
    let story1 = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\"."
    let answer1a = "I\'ll hop in. Thanks for the help!"
    let answer1b = "Better ask him if he\'s a murderer first."
    
    
    let story2 = "He nods slowly, unphased by the question."
    let answer2a = "At least he\'s honest. I\'ll climb in."
    let answer2b = "Wait, I know how to change a tire."
    
    let story3 = "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."
    let answer3a = "I love Elton John! Hand him the cassette tape."
    let answer3b = "It\'s him or me! You take the knife and stab him."
    
    let story4 = "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"
    let story5 = "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
    let story6 = "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""
    
    
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var storyTextView: UILabel!
    
    var storySelected : String = ""
    var topButtonAnswer : String = ""
    var bottomButtonAnswer : String = ""
    
    // TODO Step 5: Initialise instance variables here
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storySelected = story1
        topButtonAnswer = answer1a
        bottomButtonAnswer = answer1b
        
        updateUI()
        
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        if storySelected == story1 {
            if sender.tag == 1 {
                
                storySelected = story3
                topButtonAnswer = answer3a
                bottomButtonAnswer = answer3b
            
            } else {
                
                storySelected = story2
                topButtonAnswer = answer2a
                bottomButtonAnswer = answer2b
            
            }
            
        } else if storySelected == story2 {
            if sender.tag == 1 {
                
                storySelected = story3
                topButtonAnswer = answer3a
                bottomButtonAnswer = answer3b
            
            } else {
                
                storySelected = story4
                hideButtons()
            
            }
        } else if storySelected == story3 {
            if sender.tag == 1 {
                
                storySelected = story6
                hideButtons()
            
            } else {
                
                storySelected = story5
                hideButtons()
            
            }
        }
        
        updateUI()
    }
    

    func updateUI() {
        
        storyTextView.text = storySelected
        topButton.setTitle(topButtonAnswer, for: .normal)
        bottomButton.setTitle(bottomButtonAnswer, for: .normal)
    
    }
    
    func hideButtons() {
        
      topButton.isHidden = true
      bottomButton.isHidden = true

    }

}

