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

        //Создать класс (любой: часы, телевизор, ноутбук, мотоцикл, трактор, самолет)
        //который будет иметь 5 проперти (1 из них приватный) и минимум 3 метода (один из которых приватный должен быть).
        //Во вью контролере создать экземпляр данного класса и вызывать эти методы.
        //В консоль принтить то что делают функции данного экземпляра.
        let laptop = Laptop(name: "Asus", ram: 16, vgi: 8, frequency: 3.2)

        print("Turn Off - \(laptop.turnOff())")
        print("Turn On - \(laptop.turnOn())")
        print("Turn On - \(laptop.turnOn())")
        print("Turn Off - \(laptop.turnOff())")
    }
}

