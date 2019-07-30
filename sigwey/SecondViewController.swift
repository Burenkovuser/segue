//
//  SecondViewController.swift
//  sigwey
//
//  Created by Vasilii on 30/07/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Edit" {
            let thirdVC = segue.destination as! ThirdViewController //кастим до ThirdViewController чтобы получить доступ к свойствам этого контроллера
            thirdVC.text = segue.identifier
        }
    }
    
    //название не важно, главное чтобы параметр был UIStoryboardSegue и затем на сториборд 3 на кнопку exit и примощи этого метода можно передать значение из 3 VC во второй
    //Этот метод тоже срабатывет, когда нажимаем на кнопку в 3 VC 
    @IBAction func unwind(seque: UIStoryboardSegue) {
        let thirdVC = seque.source as! ThirdViewController //тут он являестья источником ресурсов, поэтому source
        title = thirdVC.text
    }
   
    deinit {
        print("SecondVC has uloaded from memory")
    }

}
