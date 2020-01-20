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
    
    func start(dictionary: [String: Any]) {
        current = 0
        selectedQuestion = questions[current]
    }
    
    func next() -> Question? {
        if current == questions.count {
            return nil
        }
        
        current += 1
        let selectedQuestion = questions[current]
        return selectedQuestion
    }
    
    func successfullyAnswered(selected: Bool) -> Bool {
        return selected == selectedQuestion?.response ?? false
    }
}
