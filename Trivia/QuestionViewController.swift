//
//  QuestionViewController.swift
//  Trivia
//
//  Created by Zooey Bossert on 14-05-18.
//  Copyright © 2018 Zooey Bossert. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    // MARK: Variables
    let questionController = QuestionController()
    var questionIndex: Int = 0
    var questions = [Question]()
    var correctAnswers: Int = 0
    
    // Outlet variables
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var answerButton: UIButton!
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Function when submit button is pressed
    @IBAction func submitButtonPressed(_ sender: Any) {
        if answerTextField.text == questions[0].answer  {
            correctAnswers += questions[0].value
        } else {
            correctAnswers += 0
        }
        nextQuestion()
    }
    
    // Update screen function
    func updateUI() {
        QuestionController.shared.fetchQuestions() { (questions) in
            if let questions = questions {
                DispatchQueue.main.async {
                    self.questionLabel.text = questions[0].question
                }
                self.questions = questions
            }
        }
        print(questions)
        let totalProgress = Float(questionIndex) / Float(questions.count)
        questionProgressView.setProgress(totalProgress, animated: true)
    }
    
    // Update to next question unless 20 questions have been asked
    func nextQuestion() {
        questionIndex += 1
        if questionIndex < 20 {
            updateUI()
        } else {
            performSegue(withIdentifier: "ResultsSegue", sender: nil)
        }
    }
    
    // Function to ResultViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultsSegue" {
            let resultViewController = segue.destination as! ResultViewController
            resultViewController.score = correctAnswers
        }
    }
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
}
