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
        questions.start(dictionary: unFormattedQuestions.questions())
        questionLabel.text = questions.next()?.text
    }

    @IBAction func onQuestionAnswered(_ sender: UIButton) {
        let response = sender.currentTitle == "True"
        let nextQuestion = questions.next()
        
        if let question = nextQuestion, question.response == response {
            questionLabel.text = question.text
        
        }
        
    }
    
}

