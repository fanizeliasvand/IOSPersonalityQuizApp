//
//  QuestionData.swift
//  PersonalityQuiz_Eliasvand
//
//  Created by Faniz Eliasvand on 10/31/21.
//

import Foundation

struct Question {
    var text : String
    var type : ResponseType
    var answers : [Answer]
    
}
enum ResponseType {
    case single, multiple, ranged
}
struct Answer {
    var text : String
    var type : AnimalType
    
}
enum AnimalType : Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    var definition : String {
        switch self {
        case .dog:
            return "You're incredibly outgoing.you surround yourself with the people you love and enjoy activities with your frineds."
        case .cat:
            return "Mischivous, yet mild-tempered, you enjoy doing things on your own terms."
        case .rabbit:
            return "You love everything that's soft. You are healthy and full of energy."
        case .turtle:
            return "You are wise beyond your years, and you are focused on the details. Slow and steady wins the race."
        }
    }
}
