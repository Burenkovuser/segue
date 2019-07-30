//
//  ThirdViewController.swift
//  sigwey
//
//  Created by Vasilii on 30/07/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var text: String! //в это свойство будем передавать индентификатор сигвея
    
    
    @IBAction func closedVC() {
        //dismiss(animated: true)
        text = textField.text // берем значение из текстового поля, чтобы потом его передать во второй VC 
    }
 
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.text = text //и здесь будем присваивать передаваемое значение
    }
    
    
    deinit {
         print("ThirdVC has uloaded from memory")
    }
}
