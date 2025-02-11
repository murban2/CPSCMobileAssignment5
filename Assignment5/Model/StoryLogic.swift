//
//  StoryLogic.swift
//  Assignment5
//
//  Created by user269254 on 2/10/25.
//

import Foundation


struct StoryLogic {
    var situationIndex: Int = 0
    
    //initializing
    let situations = [
        Situation(description: "You are a bomb squad agent that is trying to find a way to deal with an explosive. The bomb is set to a 5 minute timer. You must find a path to deal with this bomb.", option1: "Attempt unmanned operation", option2: "Attempt manned operation"),
        Situation(description: "Which unmanned method would you like to attempt?", option1: "Remote defusal.", option2: "Controlled Detonation."),
        Situation(description: "When you walk up to the bomb, you notice 2 wires, and a keypad. Both objects could likely lead to a successful defusal but you only have one shot at either option.", option1: "Attempt the wires.", option2: "Attempt the keypad."),
        
        Situation(description: "The drone approaches the bomb and notices a set of two wires, and a keypad. Both options seem theoritically viable.", option1: "Attempt the wires.", option2: "Attempt the keypad."),
        Situation(description: "There are two options of remote detonation. The bomb is small enough to where a drone might be able to fly it to a safe location. You could also call in a containment vehicle to place the bomb inside.", option1: "Fly the drone.", option2: "Containment vehicle."),
        Situation(description: "Select a wire to cut.", option1: "Blue Wire", option2: "Red Wire."),
        Situation(description: "Description: You look closer at the bomb and see 4 shapes etched into the side: a square, a octagon, a triangle and a circle. You also notice that there is an id code: 1000-0111-0100-0001", option1: "Enter code 4831.", option2: "Enter code 8741."),
        
        Situation(description: "The drone is unable to perform the small movements necessary and cuts both wires by mistake. The bomb blows up... The mission was a failure.", option1: "", option2: "", result: "Failure"),
        Situation(description: "The drone sees the keypad, but it cannot make out any possible hints on the device. It enters a random number in a last ditch effort and fails. The bomb blows up... The mission was a failure.", option1: "", option2: "", result: "Failure"),
        Situation(description: "The drone attaches to the bomb and attempts to fly it away, but the bomb is slightly too heavy. The bomb blows up in the danger zone... The mission was a failure.", option1: "", option2: "", result: "Failure"),
        Situation(description: "The bomb is successfully place into the containment vehicle by a handler robot. The bomb blows up and is contained successfully... The mission is a success.", option1: "", option2: "", result: "Success"),
        Situation(description: "The blue wire is cut. The bomb is successfully defused.", option1: "", option2: "", result: "Success"),
        Situation(description: "The red wire is cut. The bomb explodes... The mission is a failure.", option1: "", option2: "", result: "Failure"),
        Situation(description: "The code 4831 is entered. The bomb blows up... The mission is a failure", option1: "", option2: "", result: "Failure"),
        Situation(description: "The code 8741 is entered. The bomb is defused... The mission is a success.", option1: "", option2: "", result: "Success")
        
    ]
    
    //checking user choice
    mutating func compareChoice(choice: String) {
        if choice == situations[situationIndex].option1 {
            newIndex(leftOrRight: 0)
        } else {
            newIndex(leftOrRight: 1)
        }
    }
    
    //changing index value
    mutating func newIndex(leftOrRight: Int) {
        if (leftOrRight == 0) {
            situationIndex = situationIndex * 2 + 1
        } else {
            situationIndex = situationIndex * 2 + 2
        }
    }
    
    
    func getDescription() -> String {
        return situations[situationIndex].description
    }
    
    
    func getChoiceOne() -> String {
        return situations[situationIndex].option1
    }
    
    
    func getChoiceTwo() -> String {
        return situations[situationIndex].option2
    }
    
    
    func getResult() -> String {
        return situations[situationIndex].result
    }
    
    
}
