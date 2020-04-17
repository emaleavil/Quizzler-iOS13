//
//  UnFormattedQuestions.swift
//  Quizzler-iOS13
//
//  Created by Emanuel Leal Vila on 07/01/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

struct QuestionApi {
    private let questions: [[String : Any]] = [
        [
        "text": "Which is the largest organ in the human body?",
        "responses": ["Heart", "Skin", "Large Intestine"],
        "correctAnswer": "Skin"
        ],
        [
        "text": "Five dollars is worth how many nickels?",
        "responses": ["25", "50", "100"],
        "correctAnswer": "100"
        ],
        [
        "text": "What do the letters in the GMT time zone stand for?",
        "responses": ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"],
        "correctAnswer": "Greenwich Mean Time"
        ],
        [
        "text": "What is the French word for 'hat'?",
        "responses": ["Chapeau", "Écharpe", "Bonnet"],
        "correctAnswer": "Chapeau"
        ]
        ,
        [
        "text": "In past times, what would a gentleman keep in his fob pocket?",
        "responses": ["Notebook", "Handkerchief", "Watch"],
        "correctAnswer": "Watch"
        ]
        ,
        [
        "text": "How would one say goodbye in Spanish?",
        "responses": ["Au Revoir", "Adiós", "Salir"],
        "correctAnswer": "Adiós"
        ]
        ,
        [
        "text": "Which of these colours is NOT featured in the logo for Google?",
        "responses": ["Green", "Orange", "Blue"],
        "correctAnswer": "Orange"
        ]
        ,
        [
        "text": "What alcoholic drink is made from molasses?",
        "responses": ["Rum", "Whisky", "Gin"],
        "correctAnswer": "Rum"
        ]
        ,
        [
        "text": "What type of animal was Harambe?",
        "responses": ["Panda", "Gorilla", "Crocodile"],
        "correctAnswer": "Gorilla"
        ]
        ,
        [
        "text": "Where is Tasmania located?",
        "responses": ["Indonesia", "Australia", "Scotland"],
        "correctAnswer": "Australia"
        ]
    
    ]
    
    func getQuestions() -> [[String : Any]] {
        return questions
    }
}
