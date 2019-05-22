//
//  Image3.swift
//  AppBanda
//
//  Created by Erick Barcenas on 19/05/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//

import Foundation
import UIKit

class Image3 {
    
    var image: UIImage
    var title: String
    var subtitle: String
    var año: String
    var precio: String
    var canciones: [String]
    init(image: UIImage, title: String, subtitle: String, año: String, precio: String,canciones:[String]){
        self.image = image
        self.title = title
        self.subtitle = subtitle
        self.año = año
        self.precio = precio
        self.canciones = canciones
    }
  
}


