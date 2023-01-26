//
//  FizzBuzzView.swift
//  FizzBuzz
//
//  Created by karlis.stekels on 26/01/2023.
//

import SwiftUI

struct FizzBuzzView: View {
    let MAX = 100
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<MAX, id: \.self) { i in
                    if i % 15 == 0 {
                        NiceText(text: "FizzBuzz")
                    }
                    else if i % 3 == 0 {
                        NiceText(text: "Fizz")
                    }
                    else if i % 5 == 0 {
                        NiceText(text: "Buzz")
                    }
                    else {
                        NiceText(text: "\(i)")
                    }
                }
            }
        }
    }
}

struct FizzBuzzView_Previews: PreviewProvider {
    static var previews: some View {
        FizzBuzzView()
    }
}
