//
//  ClassMoreInfo.swift
//  AppBanda
//
//  Created by Macbook on 4/29/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//

import UIKit

class ClassMoreInfo: UIViewController {

    @IBOutlet weak var imageChange: UIImageView!
    
    @IBOutlet weak var labelMoreInfo: UILabel!
    
    var myImage = " "
    var myText = " "

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageChange.image = UIImage(named: myImage)
        
        self.labelMoreInfo.text = myText

    }

}
