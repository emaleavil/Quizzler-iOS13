//
//  QuizzlerContract.swift
//  Quizzler-iOS13
//
//  Created by Emanuel Leal Vila on 17/04/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

protocol Presenter {
    func loadGame()
    func answerQuestion(response: String)
}

protocol View {
    func showProgress(progress: Float)
    func updateQuestionLabel(text: String)
    func showOptions(optionOne: String, optionTwo: String, optionThree: String)
    func gameEnded()
    func showErrorBackground(position: Int)
    func showCorrectBackground(position: Int)
    func clearBackground(position: Int)
    func showScore(score: Int)
}
