//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Francisco Ulises Roldan Trejo on 19/06/16.
//  Copyright © 2016 Francisco Ulises Roldan Trejo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 4.a Se declara una instancia de la clase ColeccionDePaises 
    // 4.b Se declara una instancia de la clase ColeccionDeHamburguesas
    // 5. Se declara una variable de tipo de  dato estructura: Colores
    
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesas()
    let colores = Colores()
    
    //4.c Se declara un IBOutlet para la etiqueta país
    //4.d Se declara un IBOutlet para la etiqueta hamburguesa
    @IBOutlet weak var paisSeleccionado: UILabel!
    @IBOutlet weak var hamburguesaSeleccionada: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Inicializa colores de etiquetas a Blanco
        paisSeleccionado.textColor = UIColor.whiteColor()
        hamburguesaSeleccionada.textColor = UIColor.whiteColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //4.e Se declara un IBAction para implementar cambiar de país y de hamburguesa
    @IBAction func cambiaPaisYHamburguesa(sender: AnyObject) {
        //let colorAleatTexto = colores.regresaColorAleatorio()
        
    //5 Al presionar el botón se cambiará país y hamburguesa y de manera opcional los colores de fondo y del texto.
        paisSeleccionado.text = paises.obtenPais()
        hamburguesaSeleccionada.text = hamburguesas.obtenHamburguesa()
        
        let colorAleatFrame = colores.regresaColorAleatorio()
        view.backgroundColor = colorAleatFrame
        view.tintColor = colorAleatFrame
    }

}

