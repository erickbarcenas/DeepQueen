//
//  SongAlmbum.swift
//  AppBanda
//
//  Created by Erick Barcenas on 19/05/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//


import Foundation
import UIKit

class SongAlbum {
    
    var imageSong: UIImage
    var titleSong: String
    var timeSong: String
    var precioSong: String
    
    init(imageSong: UIImage, titleSong: String, timeSong: String, precioSong: String){
        self.imageSong = imageSong
        self.titleSong = titleSong
        
        self.timeSong = timeSong
        self.precioSong = precioSong
    }
    
}
