//
//  OptionsModel.swift
//  U-Cide
//
//  Created by Gilbert Nicholas on 04/05/21.
//

import Foundation

struct option {
    var id: Int
    var nextQuestion: Int
    var optionLabel: String
    
    static func getOptionsBasedOnQuestions(id: Int) -> [option] {
        var chosenOption: [option] = []
        var flag = 0
        
        for option in optionList {
            if(option.id == id) {
                chosenOption.append(option)
                flag += 1
            }
            
            if flag == 2 {
                break
            }
        }
        return chosenOption
    }
}

var optionList: [option] = [
    option(id: 0, nextQuestion: 1, optionLabel: "Unfortunately No.."),
    option(id: 0, nextQuestion: 2, optionLabel: "Yes! I think so!!"),
    
    option(id: 1, nextQuestion: 3, optionLabel: "Yeah.."),
    option(id: 1, nextQuestion: 3, optionLabel: "Okay"),
    
    option(id: 2, nextQuestion: 3, optionLabel: "Of Course!"),
    option(id: 2, nextQuestion: 3, optionLabel: "Let's go!!"),
    
    option(id: 3, nextQuestion: 4, optionLabel: "Ermm.."),
    option(id: 3, nextQuestion: 4, optionLabel: "Understood!"),
    
    option(id: 4, nextQuestion: 5, optionLabel: "Argh.."),
    option(id: 4, nextQuestion: 5, optionLabel: "I love it!"),
    
    option(id: 5, nextQuestion: 31, optionLabel: "I don't care.."),
    option(id: 5, nextQuestion: 6, optionLabel: "Go to the crime scene!"),
    
    option(id: 6, nextQuestion: 7, optionLabel: "Victim's body"),
    option(id: 6, nextQuestion: 7, optionLabel: "Blood on the crime scene"),
    
    option(id: 7, nextQuestion: 8, optionLabel: "Investigate the house keeper"),
    option(id: 7, nextQuestion: 28, optionLabel: "Investigate Daniel, victim's ex-boyfriend"),
    
    option(id: 8, nextQuestion: 9, optionLabel: "Investigate his alibi"),
    option(id: 8, nextQuestion: 26, optionLabel: "Investigate Daniel, victim's ex-boyfriend"),
    
    option(id: 9, nextQuestion: 10, optionLabel: "I need Daniel's information!"),
    option(id: 9, nextQuestion: 10, optionLabel: "Investigate Daniel, victim's ex-boyfriend"),
    
    option(id: 10, nextQuestion: 13, optionLabel: "Investigate Daniel’s alibi"),
    option(id: 10, nextQuestion: 11, optionLabel: "Judge the murderer!"),
    
    option(id: 11, nextQuestion: 12, optionLabel: "Housekeeper is the murderer"),
    option(id: 11, nextQuestion: 12, optionLabel: "Of course Daniel the murderer!"),
    
    option(id: 12, nextQuestion: -2, optionLabel: "Opps.."),
    option(id: 12, nextQuestion: -2, optionLabel: "Oh no!"),
    
    option(id: 13, nextQuestion: 14, optionLabel: "Check the crime scene"),
    option(id: 13, nextQuestion: 19, optionLabel: "Hm? The housekeeper tell you something.."),
    
    option(id: 14, nextQuestion: 15, optionLabel: "Check the suspects"),
    option(id: 14, nextQuestion: 11, optionLabel: "Judge the murderer!"),
    
    option(id: 15, nextQuestion: 16, optionLabel: "Judge the murderer!"),
    option(id: 15, nextQuestion: 16, optionLabel: "I know who the murderer is.."),
    
    option(id: 16, nextQuestion: 17, optionLabel: "Daniel!"),
    option(id: 16, nextQuestion: 18, optionLabel: "The Housekeeper!"),
    
    option(id: 17, nextQuestion: -2, optionLabel: "Oh no.."),
    option(id: 17, nextQuestion: -2, optionLabel: "What??"),
    
    option(id: 18, nextQuestion: -1, optionLabel: "Yeah!"),
    option(id: 18, nextQuestion: -1, optionLabel: "I knew it!!"),
    
    option(id: 19, nextQuestion: 21, optionLabel: "Suspicious.. no!"),
    option(id: 19, nextQuestion: 20, optionLabel: "What is it? Let’s go!"),
    
    option(id: 20, nextQuestion: -2, optionLabel: "..."),
    option(id: 20, nextQuestion: -2, optionLabel: "R.I.P"),
    
    option(id: 21, nextQuestion: 22, optionLabel: "Shoot him!"),
    option(id: 21, nextQuestion: 23, optionLabel: "Chase him!"),
    
    option(id: 22, nextQuestion: -2, optionLabel: "What??"),
    option(id: 22, nextQuestion: -2, optionLabel: "Oh no.."),
    
    option(id: 23, nextQuestion: 24, optionLabel: "Left!"),
    option(id: 23, nextQuestion: 25, optionLabel: "Right!"),
    
    option(id: 24, nextQuestion: -2, optionLabel: "Damn!"),
    option(id: 24, nextQuestion: -2, optionLabel: "Oh no.."),
    
    option(id: 25, nextQuestion: -1, optionLabel: "Yeah!"),
    option(id: 25, nextQuestion: -1, optionLabel: "Hehe..!"),
    
    option(id: 26, nextQuestion: 13, optionLabel: "Check his alibi"),
    option(id: 26, nextQuestion: 27, optionLabel: "What’s the housekeeper alibi?"),
    
    option(id: 27, nextQuestion: 14, optionLabel: "Check the crime scene"),
    option(id: 27, nextQuestion: 19, optionLabel: "Hm? The housekeeper tell you something.."),
    
    option(id: 28, nextQuestion: 11, optionLabel: "I am sure who is the murderer!"),
    option(id: 28, nextQuestion: 29, optionLabel: "Investigate the house keeper"),
    
    option(id: 29, nextQuestion: 30, optionLabel: "What’s your alibi?"),
    option(id: 29, nextQuestion: 30, optionLabel: "I need your alibi!"),
    
    option(id: 30, nextQuestion: 11, optionLabel: "I know the murderer!"),
    option(id: 30, nextQuestion: 13, optionLabel: "Investigate Daniel’s alibi"),
    
    option(id: 31, nextQuestion: 32, optionLabel: "No! I don’t want to do it!"),
    option(id: 31, nextQuestion: 6, optionLabel: "Okay.. I’m going.."),
    
    option(id: 32, nextQuestion: 6, optionLabel: "Actually no, I am going now.."),
    option(id: 32, nextQuestion: 33, optionLabel: "Yeah!!"),
    
    option(id: 33, nextQuestion: -2, optionLabel: "What??"),
    option(id: 33, nextQuestion: -2, optionLabel: "Noo..."),
]
