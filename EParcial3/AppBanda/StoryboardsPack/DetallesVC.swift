//
//  DetallesVC.swift
//  AppBanda
//
//  Created by Macbook on 4/29/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//

import UIKit

class DetallesVC: UIViewController {


    
    //Este va a cambiar
    @IBOutlet weak var cantidadPagar: UILabel!
    
    
    var cantidad = " "
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationController?.navigationBar.prefersLargeTitles = false

        self.cantidadPagar.text = cantidad
        
        view.setCrazyBackground(colorOne: Colors.purple, colorTwo: Colors.purple_2, colorThree: Colors.purple_3, colorFour: Colors.purple_4)
    }
    


}
