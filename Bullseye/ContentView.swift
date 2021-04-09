//
//  ContentView.swift
//  Bullseye
//
//  Created by Yew Wai Hon on 08/04/2021.
//

import SwiftUI

struct ContentView: View {

  @State private var alertIsVisible: Bool = false
  @State private var sliderValue: Double = 50.0

  var body: some View {
    VStack {
      Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
        .bold()
        .kerning(2.0)
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
      Text("89")
        .kerning(-1.0)
        .font(.largeTitle)
        .fontWeight(.black)
      HStack {
        Text("1")
          .bold()
        Slider(value: self.$sliderValue, in: 1.0...100.0)
        Text("100")
          .bold()
      }
      Button(action: {
        print("Hello, SwiftUI!")
        self.alertIsVisible = true
      }) {
        Text("Hit me")
      }
      .alert(isPresented: $alertIsVisible, content: {
        var roundedValue: Int = Int(self.sliderValue)
        return Alert(title: Text("Hello there!"), message: Text("The slider's value is \(self.sliderValue), rounded value is \(roundedValue)."), dismissButton: .default(Text("Awesome!")))
      })
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
