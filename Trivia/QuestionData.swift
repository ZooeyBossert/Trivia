//
//  QuestionData.swift
//  Trivia
//
//  Created by Zooey Bossert on 16-05-18.
//  Copyright © 2018 Zooey Bossert. All rights reserved.
//

import Foundation

struct Question: Codable {
    var id: Int
    var answer: String
    var question: String
    var value: Int
    
}
