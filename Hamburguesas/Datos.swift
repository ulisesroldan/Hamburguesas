//
//  Datos.swift
//  Hamburguesas
//
//  Created by Francisco Ulises Roldan Trejo on 19/06/16.
//  Copyright © 2016 Francisco Ulises Roldan Trejo. All rights reserved.
//

import Foundation
import UIKit

//De acuerdo a las instrucciones se atienden los puntos:
//1.a Se crea un archivo de Swift llamado Datos.swift, dentro del que se declara la clase ColeccionDePaises
class ColeccionDePaises{
    //1.b Se colocan atributos un arreglo de paises de tipo String con al menos 20 paises
    var paises = ["México", "Argentina", "Estados Unidos", "Brasil", "Colombia", "Italia", "Dubai", "Alemania", "Tanzania", "Australia", "Japón", "Irlanda", "China", "Rusia", "India", "España", "Perú", "Suiza", "Polonia", "Guatemala", "Noruega"]
    //1.c Se define el método func obtenPais() -> String que utiliza la función random para regresar un elemento del arreglo paises de manera aleatoria
    func obtenPais() -> String {
        let paisSelecAleatorio = paises[Int(arc4random()) % paises.count]
        return paisSelecAleatorio
    }
}

//2.a Se crea un archivo de Swift llamado Datos.swift, dentro del que se declara la clase ColeccionDeHamburguesas
class ColeccionDeHamburguesas{
    //2.b Se colocan atributos un arreglo de hamburguesas de tipo String con al menos 20 hamburguesas
    var hamburguesas = ["X-Treme","McNifica","Hawaiana","Cuarto de Libra","Big Mac","McTocino","McPollo","Angus CBO","Whooper BBQ","Big King","Tender Grill","Whataburger","Six Dollar Thickburger","Western Bacon","Jalapeño Burger","Super Star","Famous Star","Portobello Mushroom Thickburger","Choriqueso","Blue cheese burger","Shrimp burger","DoubleStak burger"]
    
    //2.c Se define el método func obtenHamburguesa() -> String que utiliza la función random para regresar un elemento del arreglo hamburguesas de manera aleatoria
    func obtenHamburguesa( )->String{
        let haburguesaSelecAleatorio = hamburguesas[Int(arc4random()) % hamburguesas.count]
        return haburguesaSelecAleatorio
    }
}

//5. De declara estructura que contiene una colecciòn de colores para el cambio de colores de fondo y de texto
struct Colores {
    let colores = [ UIColor(red:210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
                    
                    UIColor(red:40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
                    
                    UIColor(red:3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),
                    
                    UIColor(red:210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),
                    
                    UIColor(red:120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
                    
                    UIColor(red:130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
                    
                    UIColor(red:130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
                    
                    UIColor(red:3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)]
    
    //Se define una función que regresa un elemento de la estructura de manera aleatoria
    func regresaColorAleatorio() -> UIColor {
        let posicion = Int ( arc4random()) % colores.count
        return colores[posicion]
    }
}
