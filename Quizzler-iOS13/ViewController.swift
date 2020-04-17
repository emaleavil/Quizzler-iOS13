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
    @IBOutlet weak var firstOption: UIButton!
    @IBOutlet weak var secondOption: UIButton!
    @IBOutlet weak var thirdOption: UIButton!
    
    let questions = Questions()
    let unFormattedQuestions = UnFormattedQuestions()
    var timer: Timer? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateScreen(questions.start(list: unFormattedQuestions.getQuestions()))
        progressBar.progress = questions.progress()
    }

    @IBAction func onQuestionAnswered(_ sender: UIButton) {
        let response = sender.currentTitle
        let isSuccess = questions.successfullyAnswered(selected: response)
        
        if  isSuccess {
            print("Success")
            
            guard let nextQuestion = questions.next() else {
                updateScreenEndGame()
                return
            }
            updateScreen(nextQuestion)
        }
        
        buttonSelector(sender: sender, correct: isSuccess)
        
    }
    
    func updateScreen(_ question: Question) {
        questionLabel.text = question.text
        firstOption.setTitle(question.responses[0], for: .normal)
        secondOption.setTitle(question.responses[1], for: .normal)
        thirdOption.setTitle(question.responses[2], for: .normal)
        progressBar.progress = questions.progress()
    }
    
    func updateScreenEndGame() {
        questionLabel.text = "End"
        firstOption.isHidden = true
        secondOption.isHidden = true
        thirdOption.isHidden = true
        progressBar.progress = questions.progress()
    }
    
    func buttonSelector(sender: UIButton, correct: Bool) {
        sender.backgroundColor = correct ? UIColor.green : UIColor.red
        timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false, block: { _ in
            sender.backgroundColor = UIColor.clear
            self.timer?.invalidate()
        })
    }
}

