//
//  Game.swift
//  Bullseye
//
//  Created by Yew Wai Hon on 10/04/2021.
//

import Foundation

struct Game {
  var target = Int.random(in: 1...100)
  var score = 0
  var round = 1
  
  func points(sliderValue: Int) -> Int {
    let difference = abs(sliderValue - target)
    let awardedPoints = 100 - difference
    return awardedPoints
  }
}
