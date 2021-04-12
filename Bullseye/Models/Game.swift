//
//  Game.swift
//  Bullseye
//
//  Created by Yew Wai Hon on 10/04/2021.
//

import Foundation

struct Game {
  var target: Int = Int.random(in: 1...100)
  var score: Int = 0
  var round: Int = 1
  
  func points(sliderValue: Int) -> Int {
    var difference: Int = abs(sliderValue - self.target)
    var awardedPoints: Int = 100 - difference
    return awardedPoints
  }
}
