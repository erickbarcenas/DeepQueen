//
//  TriviaWinVC.swift
//  AppBanda
//
//  Created by Erick Barcenas on 21/05/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//

import UIKit

class TriviaWinVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let navigationBarAppearance = UINavigationBar.appearance()
        navigationBarAppearance.prefersLargeTitles = false
        
        self.TwoColorAnimateBackground()
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
