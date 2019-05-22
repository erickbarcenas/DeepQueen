//
//  ClassDiscography.swift
//  AppBanda
//
//  Created by Macbook on 4/29/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//

import UIKit

class ClassDiscography: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as? ClassMoreInfo
        
        if segue.identifier == "snd_image1" {
            destination!.myImage = "hotSpace200.jpg"
            destination!.myText = "Título: Hot Space \n Año: 1982 \n Canciones: 12 \n Duración por cada canción: 3min \n Precio por cancion $ 1.25 : \n Precio por disco: $9.85"
        }else if segue.identifier == "snd_image2"{
            destination!.myImage = "aKindOfMagic200.jpg"
            destination!.myText = "Título: A Kind of Magic \n Año: 1986 \n Canciones: 12 \n Duración por cada canción: 3min \n Precio por canción:  $1.30 \n Precio por disco: $11"
            
        }else if segue.identifier == "snd_image3"{
            destination!.myImage = "jazz200.jpg"
            destination!.myText = "Título: Jazz \n Año: 1978 \n Canciones: 15 \n Duración por cada canción: 4min \n Precio por canción : $2 \n Precio por disco: $15"
        }
    }
    
    /*@IBAction func unwindToDisco (_ sender: UIStoryboardSegue){}*/
}
