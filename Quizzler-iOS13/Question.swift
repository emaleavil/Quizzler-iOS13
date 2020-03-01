//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Emanuel Leal Vila on 07/01/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

struct Question {
    let responses: [String]
    let text: String
    let correctAnswer: String
}


extension Dictionary where Key == String, Value: Any {
    
    func toQuestion() -> Question {
        return Question(responses: self["responses"] as! [String], text: self["text"]! as! String, correctAnswer: self["correctAnswer"] as! String)
    }
}
