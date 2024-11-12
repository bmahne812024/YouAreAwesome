//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Brian Mahne on 11/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [.blue, .purple], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.red)
                    .scaledToFit()
                Text("Hello, world!")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
