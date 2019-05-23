//
//  MasInfoSB3.swift
//  AppBanda
//
//  Created by Erick Barcenas on 19/05/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//

import UIKit

class MasInfoSB3: UIViewController {

    @IBOutlet weak var imageCellList: UIImageView!
    @IBOutlet weak var moreInfoList: UILabel!
    @IBOutlet weak var añoCellm: UILabel!
    @IBOutlet weak var PrecioDisco: UILabel!
    
    
    var getTitle = String()
    var getAño = String()
    var getImage = UIImage()
    var getPrecio = String()
    var getID = Int()
    
    //DESCOMENTAR LINEA PARA PROBAR QUE RECIBA ARREGLO DE CANCIONES
    //var getCanciones = [SongAlbum]()
    
    //another form
    
    //var myImage = " "
    //var titleList = " "
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageCellList.image = getImage
        moreInfoList.text! = getTitle
        añoCellm.text! = getAño
        PrecioDisco.text! = getPrecio
        
        //DESCOMENTAR PARA PROBAR QUE LAS CANCIONES SE PASEN
        //getCanciones.self = getCanciones
        
        
        //Another
       // self.imageCellList.image = UIImage(named: myImage)
        
        //self.moreInfoList.text = titleList
        
    }
}
