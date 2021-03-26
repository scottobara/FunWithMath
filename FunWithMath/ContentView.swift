//
//  ContentView.swift
//  FunWithMath
//
//  Created by Scott Obara on 19/1/21.
//

import SwiftUI

struct ContentView: View {
    @State private var gameActive = false
    @State private var timesTableSelected = 0
    
    var body: some View {
        
        VStack {
            if !gameActive {
                MenuView()
            }
            if gameActive {
                GameView()
            }
            Button ("Toggle") {
                gameActive.toggle()
            }
        }
        
    }
}

struct MenuView: View {
    
    let columns = [
            GridItem(.adaptive(minimum: 80))
        ]
    
    var body: some View {
        VStack {
            Text("Chose your times table")
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                ForEach(1..<13) {
                    Button("\($0)"){
                        //Add stuff here
                        
                    }
                        .font(.title)
                        .padding()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        .shadow(radius: 20)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}


struct GameView: View {
    
    var body: some View {
        Text("🎰 Game goes here")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
