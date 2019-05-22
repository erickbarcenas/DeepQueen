//
//  RoundImg.swift
//  AppBanda
//
//  Created by Erick Barcenas on 22/05/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//

import UIKit

class RoundImg: UIImageView {

        func roundedImage() {
            self.layer.cornerRadius = self.frame.size.width / 2
            self.clipsToBounds = true
        }
}
