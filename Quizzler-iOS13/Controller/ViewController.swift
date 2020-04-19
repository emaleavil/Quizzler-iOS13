//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController, View {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var firstOption: UIButton!
    @IBOutlet weak var secondOption: UIButton!
    @IBOutlet weak var thirdOption: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    let presenter = QuizzlerPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.view = self 
        presenter.loadGame()
    }

    @IBAction func onQuestionAnswered(_ sender: UIButton) {
        presenter.answerQuestion(response: sender.currentTitle!)
    }
    
    func showProgress(progress: Float) {
        progressBar.progress = progress
    }
    
    func updateQuestionLabel(text: String) {
        questionLabel.text = text
    }
    
    func gameEnded() {
        questionLabel.text = "End"
        firstOption.isHidden = true
        secondOption.isHidden = true
        thirdOption.isHidden = true
    }
    
    func showOptions(optionOne: String, optionTwo: String, optionThree: String) {
        firstOption.setTitle(optionOne, for: .normal)
        secondOption.setTitle(optionTwo, for: .normal)
        thirdOption.setTitle(optionThree, for: .normal)
    }
    
    func showErrorBackground(position: Int) {
        setBackground(position: position, color: UIColor.red)
    }
    
    func showCorrectBackground(position: Int) {
        setBackground(position: position, color: UIColor.green)
    }
    
    func clearBackground(position: Int) {
        setBackground(position: position, color: UIColor.clear)
    }
    
    func setBackground(position:Int, color: UIColor) {
        switch(position) {
            case 0:
                firstOption.backgroundColor = color
            break
            case 1:
                secondOption.backgroundColor = color
            break
            case 2:
                thirdOption.backgroundColor = color
            break
            default:
            break
        }
    }
    
    func showScore(score: Int) {
        scoreLabel.text = "Score: \(score)"
    }
}

