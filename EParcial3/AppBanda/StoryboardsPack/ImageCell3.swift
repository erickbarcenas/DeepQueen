//
//  ImageCell3.swift
//  AppBanda
//
//  Created by Erick Barcenas on 19/05/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//

import UIKit

class ImageCell3: UITableViewCell {

    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var TitleCell: UILabel!
    @IBOutlet weak var DescriptionCell: UILabel!
    
    @IBOutlet weak var añoCell: UILabel!
    
    @IBOutlet weak var precioDiscoCell: UILabel!
    
    
    func setImage(image: Image3) {
        imageCell.image = image.image
        TitleCell.text = image.title
        DescriptionCell.text = image.subtitle
        añoCell.text = image.año
        precioDiscoCell.text = image.precio
    }

}
