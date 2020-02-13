//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Emanuel Leal Vila on 07/01/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

struct Question {
    let response: Bool
    let text: String
}


extension Dictionary where Key == String, Value: Any {
    
    func toQuestion() -> Question {
        return Question(response: self["response"] as! Bool, text: self["text"]! as! String)
    }
}
