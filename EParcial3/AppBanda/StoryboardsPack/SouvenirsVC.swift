//
//  SouvenirsVC.swift
//  AppBanda
//
//  Created by Macbook on 4/29/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//

import UIKit

class SouvenirsVC: UIViewController {

    
    @IBOutlet weak var labelSouvenirsComprar: UIButton!
    @IBOutlet weak var stepperUno: UIStepper!
    @IBOutlet weak var stepperDos: UIStepper!
    @IBOutlet weak var itemValueUno: UILabel!
    @IBOutlet weak var itemValueDos: UILabel!
    @IBOutlet weak var labelDescuento: UITextField!
    
    
    var totalSuma = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true

        
    view.setCrazyBackground(colorOne: Colors.purple, colorTwo: Colors.purple_2, colorThree: Colors.purple_3, colorFour: Colors.purple_4)
        
    }
    
    @IBAction func changeStepperValue(_ sender: UIStepper) {
        
        stepperDos.maximumValue = 10
        stepperUno.maximumValue = 10
        
        stepperDos.minimumValue = 0
        stepperUno.minimumValue = 0
        
        itemValueUno.text = String(Int(stepperUno.value))
        itemValueDos.text = String(Int(stepperDos.value))
        
    }
    
    @IBAction func btnLabelSouvenirsComprar(_ sender: Any) {
        
        var totalSumaDentro = 0.0
        
        if(stepperUno.value == 0 && stepperDos.value == 0) {
            
            // Se crea la alerta
            let alert = UIAlertController(title: "Faltan cosas", message: "Falta que decidas comprar algo.", preferredStyle: UIAlertController.Style.alert)
            
            // agregar una accion (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            // mostrar la alerta
            self.present(alert, animated: true, completion: nil)
            
            
        }else if stepperUno.value != 0 || stepperDos.value != 0{
            totalSumaDentro = (stepperDos.value * 320) + (stepperUno.value * 150)
            
            if(labelDescuento.text?.contains("DeepQueen"))! {
                totalSumaDentro = totalSumaDentro * 0.5
            }
            
            
            totalSuma = String(Int(totalSumaDentro))
            performSegue(withIdentifier: "ID_ProductosSouvenirsComprar", sender: self)
            
        }
 

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as? DetallesVC
        if segue.identifier == "ID_ProductosSouvenirsComprar" {
            destinationVC!.cantidad = totalSuma
        }
    }
}
