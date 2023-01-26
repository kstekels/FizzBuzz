//
//  NiceText.swift
//  FizzBuzz
//
//  Created by karlis.stekels on 26/01/2023.
//

import SwiftUI

struct NiceText: View {
    
    let text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.vertical)
    }
}

struct NiceText_Previews: PreviewProvider {
    static var previews: some View {
        NiceText(text: "Fizz")
    }
}
