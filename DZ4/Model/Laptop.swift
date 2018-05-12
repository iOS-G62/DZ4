//
//  Laptop.swift
//  DZ4
//
//  Created by Владимир Олейник on 12.05.2018.
//  Copyright © 2018 Владимир Олейник. All rights reserved.
//

import Foundation

class Laptop {
        var name: String
        var ram: Int
        var vgi: Int
        var frequency: Double
        var bataryCycles: Int
        var isBroken: Bool
        var isEnable: Bool

    init(name: String, ram: Int, vgi: Int, frequency: Double) {
        self.name = name
        self.ram = ram
        self.vgi = vgi
        self.frequency = frequency
        self.bataryCycles = 0
        self.isBroken = false
        self.isEnable = false
    }

    func turnOn() -> Bool{
        if !isEnable {
            bataryCycles += 1

            if !isBroken {
                isBroken = tryBroke()
            }

            if !isBroken {
                isEnable = true
            }
        }

        return isEnable
    }

    func turnOff() -> Bool{
        if isEnable {
            isEnable = !isEnable
            return true
        }

        return false
    }

    private func tryBroke() -> Bool {
        if bataryCycles > 5 {
            return Int(arc4random_uniform(1000)) % 5 == 0
        }

        return false
    }
}
