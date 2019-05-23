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
        
        //Canciones de A Kind of Magic
        var songsArray = [SongAlbum(imageSong:  #imageLiteral(resourceName: "Friends Will Be Friends"), titleSong: "Friends Will Be Friends", timeSong: "4:09", precioSong: "Precio: $2")]
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "One Vision"), titleSong: "One Vision", timeSong: "5:10", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "One Year of Love"), titleSong: "One Year of Love", timeSong: "4:28", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "Pain Is So Close to Pleasure"), titleSong: "Pain Is So Close to Pleasure", timeSong: "4:22", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "Who Wants To Live Forever"), titleSong: "Who Wants To Live Forever", timeSong: "5:15", precioSong: "Precio: $2"))
        
        //Canciones de Hot Space
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "Action This Day"), titleSong: "Action This Day", timeSong: "11s", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "Calling All Girls"), titleSong: "Calling All Girls", timeSong: "11s", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "Life Is Real "), titleSong: "Life Is Real ", timeSong: "11s", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "Put Out The Fire"), titleSong: "Put Out The Fire", timeSong: "11s", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "Staying Power"), titleSong: "Staying Power", timeSong: "11s", precioSong: "Precio: $2"))
        
        //Canciones de Jazz
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "Bicycle Race"), titleSong: "Bicycle Race", timeSong: "11s", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "Fat Bottomed Girls"), titleSong: "Fat Bottomed Girls", timeSong: "11s", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "If You Can't Beat Them"), titleSong: "If You Can't Beat Them", timeSong: "11s", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "Jealousy"), titleSong: "Jealousy", timeSong: "11s", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "Mustapha"), titleSong: "Mustapha", timeSong: "11s", precioSong: "Precio: $2"))
        
        //Canciones de A Night at the Opera
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "Bohemian Rhapsody"), titleSong: "Bohemian Rhapsody", timeSong: "11s", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "I'm In Love With My Car"), titleSong: "I'm In Love With My Car", timeSong: "11s", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "Lazing On A Sunday Afternoon"), titleSong: "Lazing On A Sunday Afternoon", timeSong: "11s", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "Sweet Lady"), titleSong: "Sweet Lady", timeSong: "11s", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "You're My Best Friend"), titleSong: "You're My Best Friend", timeSong: "11s", precioSong: "Precio: $2"))
        
        
        //Canciones de Innuendo
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "All God's People"), titleSong: "All God's People", timeSong: "11s", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "Headlong"), titleSong: "Headlong", timeSong: "11s", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "I Can't Live With You"), titleSong: "I Can't Live With You", timeSong: "11s", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "I'm Going Slightly Mad"), titleSong: "I'm Going Slightly Mad", timeSong: "11s", precioSong: "Precio: $2"))
          songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "I'm Going Slightly Mad"), titleSong: "Innuendo", timeSong: "11s", precioSong: "Precio: $2"))
       // songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "Innuendo"), titleSong: "Innuendo", timeSong: "11s", precioSong: "Precio: $2"))
        
        //Canciones de Made in Heaven
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "It's A Beautiful Day"), titleSong: "It's A Beautiful Day", timeSong: "11s", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "Let Me Live"), titleSong: "Let Me Live", timeSong: "11s", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "Made In Heaven"), titleSong: "Made In Heaven", timeSong: "11s", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "Mother Love"), titleSong: "Mother Love", timeSong: "11s", precioSong: "Precio: $2"))
        songsArray.append(SongAlbum(imageSong:  #imageLiteral(resourceName: "My Life Has Been Saved"), titleSong: "My Life Has Been Saved", timeSong: "11s", precioSong: "Precio: $2"))
        
        
        let image1 = Image3(image:  #imageLiteral(resourceName: "aKindOfMagic"), title: "A Kind of Magic", subtitle: "1986", año: "Año: 1986", precio: "$3200", canciones: [songsArray[0],songsArray[1],songsArray[2],songsArray[3],songsArray[4]])
        
        let image2 = Image3(image:  #imageLiteral(resourceName: "hotSpace"), title: "Hot Space", subtitle: "1982", año: "Año: 1982", precio: "$3300", canciones: [songsArray[5],songsArray[6],songsArray[7],songsArray[8],songsArray[9]])
        
        let image3 = Image3(image:  #imageLiteral(resourceName: "jazz"), title: "Jazz", subtitle: "1978", año: "Año: 1978", precio: "$3400", canciones: [songsArray[10],songsArray[11],songsArray[12],songsArray[13],songsArray[14]])
        
        let image4 = Image3(image:  #imageLiteral(resourceName: "a_night_at_the_opera"), title: "A Night at the Opera", subtitle: "1975", año: "Año: 1975", precio: "$2200", canciones: [songsArray[15],songsArray[16],songsArray[17],songsArray[18],songsArray[19]])
        
        let image5 = Image3(image:  #imageLiteral(resourceName: "inuendo"), title: "Innuendo", subtitle: "1991", año: "Año: 1991", precio: "$2400", canciones:  [songsArray[20],songsArray[21],songsArray[22],songsArray[23],songsArray[24]])
        
        let image6 = Image3(image:  #imageLiteral(resourceName: "made_in_heaven"), title: "Made in Heaven", subtitle: "1995", año: "Año: 1995", precio: "$2600", canciones: [songsArray[25],songsArray[26],songsArray[27],songsArray[28],songsArray[29]])
        
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
        
        //DESCOMENTAR ESTA LINEA PARA PROBAR QUE LA LISTA DE CANCIONES 
        //PASA A LA SIGUIENTE VISTA
        
        //destinationVC.getCanciones = images_list[indexPath.row].canciones
        
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












