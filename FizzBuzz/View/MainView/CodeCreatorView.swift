//
//  CodeCreatorView.swift
//  FizzBuzz
//
//  Created by karlis.stekels on 26/01/2023.
//

import SwiftUI
import UniformTypeIdentifiers

struct CodeCreatorView: View {
    @StateObject var fizzBuzzAlgViewModel: FizzBuzzAlgViewModel = FizzBuzzAlgViewModel()
    var body: some View {
        NavigationStack {
            List(fizzBuzzAlgViewModel.fizzBuzzModels) { item in
                NavigationLink(item.name) {
                    ZStack {
                        Color
                            .gray
                            .opacity(0.3)
                            .ignoresSafeArea()
                        Text(item.actualFizzBuzzCode)
                            .font(.headline)
                            .minimumScaleFactor(0.1)
                            .padding()
                            .contextMenu {
                                Button(action: {
                                    UIPasteboard.general.string = item.actualFizzBuzzCode
                                }, label: {
                                    Text("Copy to clipboard")
                                    Image(systemName: "doc.on.doc")
                                })
                            }
                            
                    }
                }
            }.navigationTitle("Fizz Buzz")
        }
    }
}

struct CodeCreatorView_Previews: PreviewProvider {
    static var previews: some View {
        CodeCreatorView()
    }
}
