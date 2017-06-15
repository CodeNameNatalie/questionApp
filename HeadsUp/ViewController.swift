//
//  ViewController.swift
//  HeadsUp
//
//  Created by Natalie Weishuhn on 5/26/17.
//  Copyright © 2017 Natalie Weishuhn. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    //1: store an array of questions
    var questions = [
    "What’s the name of this city in the United States with a bell in the near middle of the city?",
    "What is the name of the spaceship first landed on the moon?",
    "What does 'umbros' mean in Latin? Translate it into Sentinelese.",
    "What’s the first photo printed from a camera in the world?",
    "When was the first email ever sent in the world?",
    "… and what was that email about?"
    ]

    var currentQuestionIndex = 0
    
    @IBOutlet weak var questionLabel: UILabel!

    @IBAction func nextQuestionDidTap(_ sender: Any)
    {
        currentQuestionIndex += 1
        
        let numberOfQuestions = questions.count
        let nextQuestionIndex = currentQuestionIndex % numberOfQuestions  // 10 % 6 = 4
        questionLabel.text = questions[nextQuestionIndex]
    }
    
}

