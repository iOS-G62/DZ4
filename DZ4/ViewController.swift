//
//  ViewController.swift
//  DZ4
//
//  Created by Владимир Олейник on 12.05.2018.
//  Copyright © 2018 Владимир Олейник. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let laptop = Laptop(name: "Asus", ram: 16, vgi: 8, frequency: 3.2)

        print("Turn Off - \(laptop.turnOff())")
        print("Turn Off - \(laptop.turnOn())")
        print("Turn Off - \(laptop.turnOn())")
        print("Turn Off - \(laptop.turnOff())")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

