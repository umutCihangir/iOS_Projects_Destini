//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain{
        
    var stories = [["You see a fork in the road.", "Take a left.", "Take a right."], ["You see a tiger.", "Shout for help.", "Play dead."], ["You find a treasure chest.", "Open it.", "Check for traps."]]
    
    
    func nextStory(userChoice: String) -> Array<Any> {
        
        var userChoiceStory = ""
        var userChoice1 = ""
        var userChoice2 = ""
        var view = [""]
        
        switch userChoice {
        case stories[0][1]:
            userChoiceStory = stories[1][0]
            userChoice1 = stories[1][1]
            userChoice2 = stories[1][2]
            view = [userChoiceStory, userChoice1, userChoice2]
        case stories[0][2]:
            userChoiceStory = stories[2][0]
            userChoice1 = stories[2][1]
            userChoice2 = stories[2][2]
            view = [userChoiceStory, userChoice1, userChoice2]
        default:
            userChoiceStory = "Finish!"
            userChoice1 = "Dead End!"
            userChoice2 = "Dead End!"
            view = [userChoiceStory, userChoice1, userChoice2]        }
        
        return view
    }
    
}

