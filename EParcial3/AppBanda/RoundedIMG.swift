//
//  RoundedIMG.swift
//  AppBanda
//
//  Created by Macbook on 5/22/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//
import UIKit

extension UIImageView {
    
    func roundedImage() {
        //self.layer.cornerRadius = self.frame.width/2
        self.layer.borderWidth = 1
        self.layer.masksToBounds = false
        self.layer.cornerRadius = self.frame.height/1.4
        self.clipsToBounds = true
    }
}
