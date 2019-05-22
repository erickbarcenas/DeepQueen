//
//  ImageListenerSB3.swift
//  AppBanda
//
//  Created by Erick Barcenas on 19/05/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//

import UIKit

class ImageListenerSB3: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var images_list: [Image3] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        images_list = createArray()
        
        
        //tableView.delegate = self
        //tableView.dataSource = self
        view.setCrazyBackground(colorOne: Colors.purple, colorTwo: Colors.purple_2, colorThree: Colors.purple_3, colorFour: Colors.purple_4)
    }
    
    func createArray() -> [Image3]{
        let image1 = Image3(image:  #imageLiteral(resourceName: "aKindOfMagic"), title: "A Kind of Magic", subtitle: "1986", año: "Año: 1986", precio: "$3200", canciones: ["1","2"])
        let image2 = Image3(image:  #imageLiteral(resourceName: "hotSpace"), title: "Hot Space", subtitle: "1982", año: "Año: 1982", precio: "$3300", canciones: ["10","2"])
        let image3 = Image3(image:  #imageLiteral(resourceName: "jazz"), title: "Jazz", subtitle: "1978", año: "Año: 1978", precio: "$3400", canciones: ["3","2"])
        let image4 = Image3(image:  #imageLiteral(resourceName: "a_night_at_the_opera"), title: "A Night at the Opera", subtitle: "1975", año: "Año: 1975", precio: "$2200", canciones: ["1","20"])
        let image5 = Image3(image:  #imageLiteral(resourceName: "inuendo"), title: "Innuendo", subtitle: "1991", año: "Año: 1991", precio: "$2400", canciones: ["4","2"])
        let image6 = Image3(image:  #imageLiteral(resourceName: "made_in_heaven"), title: "Made in Heaven", subtitle: "1995", año: "Año: 1995", precio: "$2600", canciones: ["9","2"])
       // let image2 = Image3(image: Jazz, title: "jazz", subtitle: "Beautiful!")
        return [image1,image2,image3,image4,image5,image6]
    }
}

extension ImageListenerSB3: UITableViewDataSource, UITableViewDelegate {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return images_list.count
        }
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let image_temp = images_list[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "ID_ImageCell3") as! ImageCell3

            cell.setImage(image: image_temp)
            return cell
    }
    //This is for pass info and the image
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        _ = UIStoryboard(name: "TableBandaSB3", bundle: nil)
        let destinationVC = storyboard?.instantiateViewController(withIdentifier: "MasInfoSB3") as! MasInfoSB3
        
        print("\n\n\n\(indexPath.row)\n\n\n")
        
       /*destinationVC.getImage = images_list[indexPath.row] as! UIImage*/
        
        /*destinationVC.getTitle = images_list[indexPath.row] as! String*/
       
        destinationVC.getImage = images_list[indexPath.row].image
        
        destinationVC.getTitle = images_list[indexPath.row].title
        
        destinationVC.getAño = images_list[indexPath.row].año
        
        destinationVC.getPrecio = images_list[indexPath.row].precio
        
        self.navigationController?.pushViewController(destinationVC , animated: true)
    }
    
    //With button
   /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as? MasInfoSB3
        
        if segue.identifier == "snd_image" {
            destination!.myImage = "jazz"
            destination!.titleList = images_list[indexPath.row]
        }
    }*/
    
    
}












