//
//  QuizzlerPresenter.swift
//  Quizzler-iOS13
//
//  Created by Emanuel Leal Vila on 17/04/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

class QuizzlerPresenter: Presenter {
    
    let questions = Questions()
    let api = QuestionApi()
    var timer: Timer? = nil
    var score: Int = 0
    
    var view: View? = nil
    
    func loadGame() {
        let question = questions.start(list: api.getQuestions())
        showQuestion(question: question)
        view?.showProgress(progress: questions.progress())
        view?.showScore(score: score)
    }
    
    func answerQuestion(response: String) {
        let isSuccess = questions.successfullyAnswered(selected: response)
        buttonSelector(response: response, correct: isSuccess)
        
        if  isSuccess {
            print("Success")
            
            guard let nextQuestion = questions.next() else {
                view?.gameEnded()
                view?.showProgress(progress: questions.progress())
                return
            }
            
            showQuestion(question: nextQuestion)
            view?.showProgress(progress: questions.progress())
            
        }
    }
    
    fileprivate func showQuestion(question: Question) {
        view?.updateQuestionLabel(text: question.text)
        view?.showOptions(
            optionOne: question.responses[0],
            optionTwo: question.responses[1],
            optionThree: question.responses[2]
        )
    }
    
    
    fileprivate func buttonSelector(response: String, correct: Bool) {
        guard let index = questions.responseIndex(response: response) else {
            return
        }
        
        if correct {
            score += 10
            view?.showCorrectBackground(position: index)
        } else {
            score += score == 0 ? 0 : -2
            view?.showErrorBackground(position: index)
        }
        
        view?.showScore(score: score)
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false, block: { _ in
            self.view?.clearBackground(position: index)
            self.timer?.invalidate()
        })
    }
    
}
