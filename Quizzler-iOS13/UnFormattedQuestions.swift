//
//  UnFormattedQuestions.swift
//  Quizzler-iOS13
//
//  Created by Emanuel Leal Vila on 07/01/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

struct UnFormattedQuestions {
    private let questions: [[String : Any]] = [
        [
        "text": "Four + Two is equal Six",
        "response": true
        ],
        [
        "text": "Is ViewController from iOsPlatform?",
        "response": true
        ],
        [
        "text": "Four + Two is equal Eight?",
        "response": false
        ]
    
    ]
    
    func getQuestions() -> [[String : Any]] {
        return questions
    }
}
