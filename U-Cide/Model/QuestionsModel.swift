//
//  QuestionsModel.swift
//  U-Cide
//
//  Created by Gilbert Nicholas on 04/05/21.
//

import Foundation


struct question {
    var id: Int = -1
    var questionLabel: String = ""
    var options: [option] = []
    var image: String = ""
    
    static func getQuestion(id: Int) -> question {
        var chosenQuestion: question = question()

        for questionS in questionList {
            if questionS.id == id {
                chosenQuestion = questionS
                break
            }
        }
        return chosenQuestion
    }
}

var questionList: [question] = [
    question(id: 0, questionLabel: "Today is a great day! Don't you agree?", options: option.getOptionsBasedOnQuestions(id: 0), image: "Flower"),
    
    question(id: 1, questionLabel: "Why? I'm timeX and in my hand, you can be anyone at anytime! Doesn't it fun??", options: option.getOptionsBasedOnQuestions(id: 1), image: "Time"),
    
    question(id: 2, questionLabel: "Nice! I love your spirit! My name is TimeX and let's start our journey shall we?", options: option.getOptionsBasedOnQuestions(id: 2), image: "Time"),
    
    question(id: 3, questionLabel: "Okay, this is your life! Feel free to decide anything, just remember different choice leads to different results!", options: option.getOptionsBasedOnQuestions(id: 3), image: "Tree"),
    
    question(id: 4, questionLabel: "Let's time travel! It's 1900s and you are a detective! It's raining and cold now though..", options: option.getOptionsBasedOnQuestions(id: 4), image: "Detective"),
    
    question(id: 5, questionLabel: "Head officer of Scotland Yard, warn you about crime that happened at Julius St. and want you to solve it", options: option.getOptionsBasedOnQuestions(id: 5), image: "Police"),
    
    question(id: 6, questionLabel: "When you enter the scene of crime, you want to investigate..", options: option.getOptionsBasedOnQuestions(id: 6), image: "CrimeScene"),
    
    question(id: 7, questionLabel: "It looks like the blood doesn't dry yet, and the victim's body is still warm", options: option.getOptionsBasedOnQuestions(id: 7), image: "Blood"),
    
    question(id: 8, questionLabel: "The house keeper said that the victim's still live when he take the rent money 3 hours ago", options: option.getOptionsBasedOnQuestions(id: 8), image: "Money"),
    
    question(id: 9, questionLabel: "He said that he was at home and hurried to the crime scene when the police call him", options: option.getOptionsBasedOnQuestions(id: 9), image: "Phone"),
    
    question(id: 10, questionLabel: "Daniel said that his ex is already cut contacts with him 2 weeks ago because of a “second man“", options: option.getOptionsBasedOnQuestions(id: 10), image: "Heartbreak"),
    
    question(id: 11, questionLabel: "Who is it?", options: option.getOptionsBasedOnQuestions(id: 11), image: "Who"),
    
    question(id: 12, questionLabel: "You are sued because don’t have enough evidence when judge the murderer! You are failed!!", options: option.getOptionsBasedOnQuestions(id: 12), image: "Skull"),
    
    question(id: 13, questionLabel: "Daniel said that he was at bar alone from 2 hours ago until go to the crime scene because the police called him", options: option.getOptionsBasedOnQuestions(id: 13), image: "Phone"),
    
    question(id: 14, questionLabel: "The room is pretty clean, but it looks like the murderer accidentally stepped on the victim's blood!", options: option.getOptionsBasedOnQuestions(id: 14), image: "Step"),
    
    question(id: 15, questionLabel: "Hmm.. The housekeeper shoes is clean, but Daniel’s shoes is dirty because of rain outside!", options: option.getOptionsBasedOnQuestions(id: 15), image: "Step"),
    
    question(id: 16, questionLabel: "Who is the murderer??", options: option.getOptionsBasedOnQuestions(id: 16), image: "Who"),
    
    question(id: 17, questionLabel: "You are wrong! Housekeeper's shoes are clean because he change it due to stepped on victim's blood, so the housekeeper is the murderer!", options: option.getOptionsBasedOnQuestions(id: 17), image: "Skull"),
    
    question(id: 18, questionLabel: "Good job! Housekeeper's shoes are clean because he change it due to stepped on victim's blood, so the housekeeper is the murderer!", options: option.getOptionsBasedOnQuestions(id: 18), image: "Party"),
    
    question(id: 19, questionLabel: "He ask you to go to the Delium Street secretly with him because he found information about the victim’s", options: option.getOptionsBasedOnQuestions(id: 19), image: "Silent"),
    
    question(id: 20, questionLabel: "It turns out the housekeeper is the murderer, but you are killed by him when you both went to Delium Street!", options: option.getOptionsBasedOnQuestions(id: 20), image: "Skull"),
    
    question(id: 21, questionLabel: "The housekeeper panicked and run from the crime scene! He is the murderer!", options: option.getOptionsBasedOnQuestions(id: 21), image: "Knife"),
    
    question(id: 22, questionLabel: "You are getting penalty because you kill the housekeeper. Even though he’s the murderer!", options: option.getOptionsBasedOnQuestions(id: 22), image: "Skull"),
    
    question(id: 23, questionLabel: "You are at the intersection! Left or right??", options: option.getOptionsBasedOnQuestions(id: 23), image: "LeftRight"),
    
    question(id: 24, questionLabel: "You lost him! Now he is unknown to be found!!", options: option.getOptionsBasedOnQuestions(id: 24), image: "Skull"),
    
    question(id: 25, questionLabel: "You chased him! Good! Now he has to pay for what he has done!!", options: option.getOptionsBasedOnQuestions(id: 25), image: "Party"),
    
    question(id: 26, questionLabel: "Daniel said that his ex is already cut contacts with him 2 weeks ago because of the “second man”", options: option.getOptionsBasedOnQuestions(id: 26), image: "Heartbreak"),
    
    question(id: 27, questionLabel: "He said that he was at home and hurried to the crime scene when the police call him", options: option.getOptionsBasedOnQuestions(id: 27), image: "Phone"),
    
    question(id: 28, questionLabel: "Daniel said that his ex is already cut contacts with him 2 weeks ago because of the “second man”", options: option.getOptionsBasedOnQuestions(id: 28), image: "Heartbreak"),
    
    question(id: 29, questionLabel: "The house keeper said that the victim's still live when he take the rent money 3 hours ago", options: option.getOptionsBasedOnQuestions(id: 29), image: "Money"),
    
    question(id: 30, questionLabel: "He said that he was at home and hurried to the crime scene when the police call him", options: option.getOptionsBasedOnQuestions(id: 30), image: "Phone"),
    
    question(id: 31, questionLabel: "The head police force you to take the crime case by picking you up directly!", options: option.getOptionsBasedOnQuestions(id: 31), image: "PoliceCar"),
    
    question(id: 32, questionLabel: "Are you sure??..", options: option.getOptionsBasedOnQuestions(id: 32), image: "Who"),
    
    question(id: 33, questionLabel: "You are fired as detective and considered failed in this life!!", options: option.getOptionsBasedOnQuestions(id: 33), image: "Skull"),
]
