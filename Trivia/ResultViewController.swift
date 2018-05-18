//
//  ResultViewController.swift
//  Trivia
//
//  Created by Zooey Bossert on 14-05-18.
//  Copyright © 2018 Zooey Bossert. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
  
    // MARK: - Variables
    @IBOutlet weak var scoreLabel: UILabel!
    
    // Score from the trivia
    var score: Int!
    
    // Function for the score
    func finalScore() {
        scoreLabel.text = "You've Scored \(score) Points!"
    }

    // MARK: - Override Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        finalScore()
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
