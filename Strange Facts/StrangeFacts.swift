//
//  StrangeFacts.swift
//  Strange Facts
//
//  Created by Brandon Mahoney on 11/27/16.
//  Copyright © 2016 Brandon Mahoney. All rights reserved.
//

import GameKit

struct StrangeFacts {
    let facts = [
        "Ants stretch when they wake up in the morning",
        "Ostriches can run faster than horses",
        "Olympic gold medals are actually made mostly of silver",
        "You are born with 300 bones; by the time you are an adult you will have 206",
        "It takes about 8 minutes for the light from the Sun to reach Earth",
        "Some bamboo plants can grow almost a meter in just one day",
        "The state of Florida is bigger than England",
        "Some penguins can leap 2-3 meters out of the water",
        "On average, it takes 66 days to form a new habit",
        "Mammoths still walked the Earth when the Great Pyramid was being built"
    ]
    
    
//    func randomFact() -> String {
//        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count)
//        return facts[randomNumber]
//    }
    
    func randomSequenceGenerator(min: Int, max: Int) -> () -> String {
        var numbers: [Int] = []
        return {
            if numbers.count == 0 {
                numbers = Array(min ... max)
            }
            
            let index = Int(arc4random_uniform(UInt32(numbers.count)))
            return self.facts[numbers.remove(at: index)]
        }
    }
}


