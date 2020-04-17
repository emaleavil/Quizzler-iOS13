//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by Emanuel Leal Vila on 07/01/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

class Questions {
    
    private var questions: [Question] = [Question]()
    private var current: Int = 0
    private var selectedQuestion: Question? = nil
    
    func start(list: [[String: Any]]) -> Question {
        current = 0
        questions = list.map { (dictionary) -> Question in
            dictionary.toQuestion()
        }
        selectedQuestion = questions[current]
        return selectedQuestion!
    }
    
    func next() -> Question? {
        if current + 1 == questions.count {
            return nil
        }
        
        current += 1
        selectedQuestion = questions[current]
        return selectedQuestion
    }
    
    func successfullyAnswered(selected: String?) -> Bool {
        return selected == selectedQuestion?.correctAnswer
    }
    
    func progress() -> Float {
        return Float(current + 1) / Float(questions.count)
    }
}
