//
//  QuestionController.swift
//  Restaurant
//
//  Created by Zooey Bossert on 07-05-18.
//  Copyright © 2018 Zooey Bossert. All rights reserved.
//

import UIKit

class QuestionController {
    
    static let shared = QuestionController()
    let baseURL = URL(string: "http://jservice.io/api/")!
    
    // Request questions from given url
    func fetchQuestions(completion: @escaping ([Question]?) -> Void) {
        let questionURL = baseURL.appendingPathComponent("random")
        let task = URLSession.shared.dataTask(with: questionURL) {
            (data, response, error) in
            let jsonDecoder = JSONDecoder()
            if let data = data,
                let questions = try? jsonDecoder.decode([Question].self, from: data) {
                completion(questions)
            } else {
                completion(nil)
            }
        }
        task.resume()
    }
    
}
