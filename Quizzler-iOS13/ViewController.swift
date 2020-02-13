//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let questions = Questions()
    let unFormattedQuestions = UnFormattedQuestions()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions.start(list: unFormattedQuestions.getQuestions()).text
    }

    @IBAction func onQuestionAnswered(_ sender: UIButton) {
        let response = sender.currentTitle == "True"
        
        if questions.successfullyAnswered(selected: response) {
            print("Success")
            
            guard let nextQuestion = questions.next() else {
                questionLabel.text = "End"
                return
            }
            questionLabel.text = nextQuestion.text
        }
        
    }
    
}

