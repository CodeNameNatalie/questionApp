//
//  GameViewController.swift
//  HeadsUp
//
//  Created by Natalie Weishuhn on 6/23/17.
//  Copyright © 2017 Natalie Weishuhn. All rights reserved.
//

import UIKit

class GameViewController : UIViewController {
   //when you want to connect element to outlet, create a iboutlet
    
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var pointLabel: UILabel!
    
    @IBOutlet weak var questionImageView: UIImageView!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    var game: HeadsUpGame = HeadsUpGame()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pointLabel.text = "--"
        
    let starterImage = UIImage(named: "2")
        questionImageView.image = starterImage
        questionLabel.text = "Tap the true button to start a new game!"
   
        //diable the false button when game starts
        falseButton.isEnabled = false
        
    }
    
    @IBAction func trueButtonDidTap(_ sender: Any) {
        if pointLabel.text == "--" {
            game.point = 0
            falseButton.isEnabled = true
        } else {
            game.point += 1 
        }
        updateGame()
    }
    
    @IBAction func falseButtonDidTap(_ sender: Any) {
        game.point -= 1
        updateGame()

    }
    
    func updateGame() {
        let nextQuestion = game.getNextQuestion()
        let questionImage = game.getQuestionImageName()
        let image = UIImage(named: questionImage)
        
        questionImageView.image = image
        questionLabel.text = nextQuestion
        
        pointLabel.text = "\(game.point)"
    }
}
