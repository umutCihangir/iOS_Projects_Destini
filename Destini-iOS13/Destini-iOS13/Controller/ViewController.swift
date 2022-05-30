//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    var story = Story()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        storyLabel.text = story.story0
        choice1Button.setTitle(story.choice1, for: .normal)
        choice2Button.setTitle(story.choice2, for: .normal)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        var viewC: Array<Any>
        viewC = storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        storyLabel.text = viewC[0] as? String
        choice1Button.setTitle(viewC[1] as? String, for: .normal)
        choice2Button.setTitle(viewC[2] as? String, for: .normal)
        
        /*
        switch sender.currentTitle {
        case story.stories[0][1]:
            storyLabel.text = story.stories[1][0]
            choice1Button.setTitle(story.stories[1][1], for: .normal)
            choice2Button.setTitle(story.stories[1][2], for: .normal)
        case story.stories[0][2]:
            storyLabel.text = story.stories[2][0]
            choice1Button.setTitle(story.stories[2][1], for: .normal)
            choice2Button.setTitle(story.stories[2][2], for: .normal)
        default:
            print("utku")
        }
        */
    }
    
    



}

