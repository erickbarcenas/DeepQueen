//
//  TriviaMalVC.swift
//  AppBanda
//
//  Created by Macbook on 4/29/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//

import UIKit

class TriviaMalVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let navigationBarAppearance = UINavigationBar.appearance()
        navigationBarAppearance.prefersLargeTitles = false
        view.setCrazyBackground(colorOne: Colors.purple, colorTwo: Colors.purple_2, colorThree: Colors.purple_3, colorFour: Colors.purple_4)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! TriviaVC
    }


}
