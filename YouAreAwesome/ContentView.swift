//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Brian Mahne on 11/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    let messages = [
        "You are great!",
        "You are awesome!",
        "You are amazing!"
    ]
    
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [.purple, .white], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text(message)
                    .font(.largeTitle)
                
                Spacer()
                Button("Push me") {
                    message = messages[Int.random(in: 0...2)]
                    imageName = "animal\(Int.random(in: 1...3))"
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
