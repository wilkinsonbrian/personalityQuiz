//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Brian Wilkinson on 4/10/19.
//  Copyright © 2019 Brian Wilkinson. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var responses: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        // Do any additional setup after loading the view.
    }
    

    func calculatePersonalityResult() {
        var frequencyOfAnswers: [Answer.AnimalType: Int] = [:]
        let responseTypes = responses.map {$0.type}
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by: {(pair1, pair2) -> Bool in
            return pair1.value > pair2.value})
        
        let mostCommonAnswer = frequentAnswersSorted.first!.key
    
    }

}
