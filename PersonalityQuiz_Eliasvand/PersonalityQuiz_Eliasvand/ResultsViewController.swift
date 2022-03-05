//
//  ResultsViewController.swift
//  PersonalityQuiz_Eliasvand
//
//  Created by Faniz Eliasvand on 10/29/21.
//On my honor, I have neither received nor given any unauthorized assistance on Mid Term Exam  Faniz Eliasvand 

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultsDefinitionLabel: UILabel!
    

    var responses: [Answer]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        calculatePersonalityResults()
        // Do any additional setup after loading the view.
    }
    
    
    func calculatePersonalityResults() {
        var frequancyOfAnswers: [AnimalType: Int] = [:]
        let responseTypes = responses.map{$0.type}
        
        for response in responseTypes {
            frequancyOfAnswers[response] = (frequancyOfAnswers[response] ?? 0) + 1
        }
        
        let frequantAnswerSorted = frequancyOfAnswers.sorted(by: {(pair1, pair2) -> Bool in
            return pair1.value > pair2.value
            
        })
        
        let mostCommonAnswer = frequantAnswerSorted.first!.key
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultsDefinitionLabel.text = mostCommonAnswer.definition
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
