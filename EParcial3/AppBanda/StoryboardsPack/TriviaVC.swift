//
//  TriviaVC.swift
//  AppBanda
//
//  Created by Macbook on 4/29/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//

import UIKit

class TriviaVC: UIViewController {

    
    
    // for the question 1
    @IBOutlet weak var labelTriviaQuestion: UILabel!
    @IBOutlet weak var imageViewQ: UIImageView!
    @IBOutlet weak var labelTriviaAnswer: UILabel!
    @IBOutlet weak var switchTrivia: UISwitch!
    
    // for the question 2
    @IBOutlet weak var labelTriviaQuestion2: UILabel!
    @IBOutlet weak var imageViewQ2: UIImageView!
    @IBOutlet weak var labelTriviaAnswer2: UILabel!
    @IBOutlet weak var switchTrivia2: UISwitch!
    
    // for the question 3
    
    @IBOutlet weak var labelTriviaQuestion3: UILabel!
    @IBOutlet weak var imageViewQ3: UIImageView!
    @IBOutlet weak var labelTriviaAnswer3: UILabel!
    @IBOutlet weak var switchTrivia3: UISwitch!
    
    @IBOutlet weak var labelTriviaQuestion4: UILabel!
    
    @IBOutlet weak var imageViewQ4: UIImageView!
    
    @IBOutlet weak var labelTriviaAnswer4: UILabel!
    
    @IBOutlet weak var switchTrivia4: UISwitch!
    
    @IBOutlet weak var labelTriviaQuestion5: UILabel!
    
    @IBOutlet weak var imageViewQ5: UIImageView!
    
    @IBOutlet weak var labelTriviaAnswer5: UILabel!
    
    @IBOutlet weak var switchTrivia5: UISwitch!
    
    // var for send Data
    
    var data: Bool = true
    
    // btn for send a data
    
    @IBOutlet weak var sendDataVC: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true

        data = true
        
       // self.TwoColorAnimateBackground()
        // Do any additional setup after loading the view.
        //let navigationBarAppearance = UINavigationBar.appearance()
        //navigationBarAppearance.prefersLargeTitles = true
        view.setCrazyBackground(colorOne: Colors.purple, colorTwo: Colors.purple_2, colorThree: Colors.purple_3, colorFour: Colors.purple_4)
    }
    
    @IBAction func switchAction(_ sender: Any) {
        
        var question_1: Bool = true
        var question_2: Bool = true
        var question_3: Bool = true
        var question_4: Bool = true
        var question_5: Bool = true
        
        
        
        //question 1
        if switchTrivia.isOn == true {
            labelTriviaAnswer.text = "Verdadero"
            question_1 = true
        }
        if switchTrivia.isOn != true {
            labelTriviaAnswer.text = "Falso"
            question_1 = false
        }
        //question 2
        if switchTrivia2.isOn == true {
            labelTriviaAnswer2.text = "Verdadero"
            question_2 = true
        }
        if switchTrivia2.isOn != true {
            labelTriviaAnswer2.text = "Falso"
            question_2 = false
        }
        
        //question 3
        if switchTrivia3.isOn == true {
            labelTriviaAnswer3.text = "Verdadero"
            question_3 = true
        }
        if switchTrivia3.isOn != true {
            labelTriviaAnswer3.text = "Falso"
            question_3 = false
        }
        
        //question 4
        if switchTrivia4.isOn == true {
            labelTriviaAnswer4.text = "Verdadero"
            question_4 = true
        }
        if switchTrivia4.isOn != true {
            labelTriviaAnswer4.text = "Falso"
            question_4 = false
        }
        
        //question 5
        if switchTrivia5.isOn == true {
            labelTriviaAnswer5.text = "Verdadero"
            question_5 = true
        }
        if switchTrivia5.isOn != true {
            labelTriviaAnswer5.text = "Falso"
            question_5 = false
        }
        
        
        if(question_1 == true && question_2 == true && question_3 == true && question_4 == true && question_5 == true){
            self.data = true
        }else if(question_1 != true || question_2 != true || question_3 != true || question_4 != true || question_5 != true){
            self.data = false
        }
        
    }
    
    @IBAction func btnSendData(_ sender: Any) {
        // Validate and send data to TriviaCorrectaVC
        if data == true{
            performSegue(withIdentifier: "segueTriviaCorrecto", sender: self)
        }
        if data != true{
            performSegue(withIdentifier: "segueTriviaMal", sender: self)
        }
        data = false
}
    
    @IBAction func unwindToTriviaVC(_ sender: UIStoryboardSegue){}
    
    /*func TwoColorAnimateBackground() {
        UIView.animate(withDuration: 1, animations: {
            self.view.backgroundColor = UIColor.init(red: 1/255, green: 122/255, blue: 0.8588, alpha: 1.0)
        }, completion: {
            (completed : Bool) -> Void in
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear, animations: {
                self.view.backgroundColor = UIColor.init(red: 128/255, green: 0/255, blue: 128/255, alpha: 1.0)
            }, completion: {
                (completed : Bool) -> Void in
                self.TwoColorAnimateBackground()
            })
        })
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle
    {
        return .lightContent
    }*/
}

