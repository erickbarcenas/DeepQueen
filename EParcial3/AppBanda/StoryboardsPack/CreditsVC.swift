//
//  CreditsVC.swift
//  AppBanda
//
//  Created by Macbook on 4/29/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//

import UIKit

class CreditsVC: UIViewController {

    @IBOutlet weak var logoBusi: UIImageView!
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
self.navigationController?.navigationItem.largeTitleDisplayMode = .never        // Do any additional setup after loading the view.
        
        logoBusi.roundedImage()
        
    //   logoBusi.clipsToBounds = true
        
        /*   logoBusi.layer.borderWidth = 1
         logoBusi.layer.masksToBounds = false
         logoBusi.layer.borderColor = UIColor.black.cgColor
         logoBusi.layer.cornerRadius = 100 //logoBusi.frame.size.height/2
         logoBusi.layer.cornerRadius = logoBusi.frame.size.width/2
         
         logoBusi.clipsToBounds = true*/
        
               /* view.setCrazyBackground(colorOne: Colors.purple, colorTwo: Colors.purple_2, colorThree: Colors.purple_3, colorFour: Colors.purple_4)*/
        self.TwoColorAnimateBackground()

    }
    
    @IBAction func goBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func TwoColorAnimateBackground() {
        UIView.animate(withDuration: 1, animations: {
            self.view.backgroundColor = UIColor.init(red: 1/255, green: 122/255, blue: 250/255, alpha: 1.0)
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
    }


}
