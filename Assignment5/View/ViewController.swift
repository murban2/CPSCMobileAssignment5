//
//  ViewController.swift
//  Assignment5
//
//  Created by user269254 on 2/10/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonOne: UIButton!
    
    var storyLogic = StoryLogic()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    
    func updateUI() {
        //initialize text values and button borders.
        
        storyLabel.text = storyLogic.getDescription()
        buttonOne.setTitle(storyLogic.getChoiceOne(), for: .normal)
        buttonTwo.setTitle(storyLogic.getChoiceTwo(), for: .normal)
        
        buttonOne.layer.borderWidth = 2
        buttonTwo.layer.borderWidth = 2
    }
    
    
    @IBAction func optionOneClicked(_ sender: Any) {
        
        //get the title string for button one
        let chosenPath = buttonOne.title(for: .normal)
        
        //call compareChoices method
        storyLogic.compareChoice(choice: chosenPath!)
        
        //set new text values.
        storyLabel.text = storyLogic.getDescription()
        buttonOne.setTitle(storyLogic.getChoiceOne(), for: .normal)
        buttonTwo.setTitle(storyLogic.getChoiceTwo(), for: .normal)
        
        //check if story is over
        if storyLogic.getResult() != "unstated" {
            storyEnded()
        }
        
        
    }
    
    @IBAction func optionTwoClicked(_ sender: Any) {
        
        //get the title string for button two
        let chosenPath = buttonTwo.title(for: .normal)
        
        //call compareChoices method
        storyLogic.compareChoice(choice: chosenPath!)
        
        //set new text values
        storyLabel.text = storyLogic.getDescription()
        buttonOne.setTitle(storyLogic.getChoiceOne(), for: .normal)
        buttonTwo.setTitle(storyLogic.getChoiceTwo(), for: .normal)
        
        //check if story is over
        if storyLogic.getResult() != "unstated" {
            storyEnded()
        }
    }
    
    func storyEnded() {
        
        //disable buttons since story is over.
        buttonOne.isEnabled = false
        buttonOne.isHidden = true
        
        buttonTwo.isEnabled = false
        buttonTwo.isHidden = true
        
    }

}

