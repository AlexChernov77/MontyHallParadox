//
//  MontyHallParadox.swift
//  MontyHallParadox
//
//  Created by Александр Чернов on 14.04.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//

import Foundation

class MontyHallParadox
{
    func paradox () -> String
    {
        // моя первоночально выбранная дверь
        var firstChoice = 0
        // дверь  которую предлагает выбрать ведущий
        var changeMyChoice = 0
        
        for _ in 0..<100
        {
            var doors = [0,0,0]
            
            //  помещаем в случайную дверь автомобиль
            doors[randomNumber(max: 3)] = 1
            let choice = randomNumber(max: 3)
            
            var showDoor: Int?
            repeat
            {
                showDoor = randomNumber(max: 3)
            }
                while (doors[showDoor!] == 1 || showDoor! == choice)
            
            
            firstChoice += doors[choice]
            
            changeMyChoice += doors[3 - choice - showDoor!]
            
        }
        return "Шанс выигрыша при принятии предложения ведущего составляет \(Double(changeMyChoice)) % \n\nШанс выигрыша при отказе от предложения ведущего составляет \(Double(firstChoice)) %"
    }
    
    private func randomNumber (max maxNumber: Int) -> Int
    {
        return Int(arc4random_uniform(UInt32(maxNumber)))
    }
}
