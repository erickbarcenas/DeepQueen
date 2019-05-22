//
//  SongListScreenVC.swift
//  AppBanda
//
//  Created by Erick Barcenas on 19/05/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//

import UIKit

class SongListScreenVC: UIViewController {

    @IBOutlet weak var viewControllerSong: UITableView!
    
    var images_list_song: [SongAlbum] = []

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        images_list_song = createArray()
       view.setCrazyBackground(colorOne: Colors.purple, colorTwo: Colors.purple_2, colorThree: Colors.purple_3, colorFour: Colors.purple_4)
    }
    
    func createArray() -> [SongAlbum]{
        let image1 = SongAlbum(imageSong:  #imageLiteral(resourceName: "dev-setup"), titleSong: "One Vision!", timeSong: "11s", precioSong: "Precio: $2")
        let image2 = SongAlbum(imageSong:  #imageLiteral(resourceName: "dev-setup"), titleSong: "A Kind Of Magic", timeSong: "12s", precioSong: "Precio: $3")
        let image3 = SongAlbum(imageSong:  #imageLiteral(resourceName: "dev-setup"), titleSong: "One Year Of Love", timeSong: "13s", precioSong: "Precio: $5")
        let image4 = SongAlbum(imageSong:  #imageLiteral(resourceName: "dev-setup"), titleSong: "Pain Is So Close to Pleasure", timeSong: "14s", precioSong: "Precio: $4")
        let image5 = SongAlbum(imageSong:  #imageLiteral(resourceName: "dev-setup"), titleSong: "Friends Will Be Friends", timeSong: "14s", precioSong: "Precio: $4")
        return [image1,image2,image3,image4,image5]
    }
}

extension SongListScreenVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return images_list_song.count
}
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let image_temp = images_list_song[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ID_ImageCell3Song") as! SongTVCell
        
        cell.setImageSong(image: image_temp)
        
        return cell
    }
    
}

