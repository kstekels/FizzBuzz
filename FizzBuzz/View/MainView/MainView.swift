//
//  MainView.swift
//  FizzBuzz
//
//  Created by karlis.stekels on 26/01/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            FizzBuzzView()
                .tabItem {
                    Label("FizzBuzz", systemImage: "bubbles.and.sparkles")
                }
            CodeCreatorView()
                .tabItem {
                    Label("Code", systemImage: "note.text")
                }
            AboutVIew()
                .tabItem {
                    Label("About", systemImage: "info.bubble.fill")
                }
        }
    }
}

struct BackgroundText: View {
    let text: String
    let color: Color
    var body: some View {
        ZStack {
            color.opacity(0.3).ignoresSafeArea()
            Text(text)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
