//
//  ViewController.swift
//  sigwey
//
//  Created by Vasilii on 30/07/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination // не кастим дальше
        secondVC.navigationItem.title = segue.identifier
    }

}

