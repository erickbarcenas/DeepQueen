//
//  SongTVCell.swift
//  AppBanda
//
//  Created by Erick Barcenas on 19/05/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//

import UIKit

class SongTVCell: UITableViewCell {

    @IBOutlet weak var imageCellSong: UIImageView!
    
    @IBOutlet weak var titleCellSong: UILabel!
    
    @IBOutlet weak var timeCellSong: UILabel!
    
    @IBOutlet weak var precioCellSong: UILabel!
    
    func setImageSong(image: SongAlbum ) {
        imageCellSong.image = image.imageSong
        titleCellSong.text! = image.titleSong
        timeCellSong.text! = image.timeSong
        precioCellSong.text! = image.precioSong
    }
    
}
