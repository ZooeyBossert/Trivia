//
//  IntroductionViewController.swift
//  Trivia
//
//  Created by Zooey Bossert on 14-05-18.
//  Copyright © 2018 Zooey Bossert. All rights reserved.
//

import UIKit

class IntroductionViewController: UIViewController {
    
    //MARK: - Functions
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Linked to done button to restart trivia
    @IBAction func unwindToQuizIntroduction(segue: UIStoryboardSegue) {
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
