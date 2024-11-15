//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Brian Mahne on 11/12/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        
        GeometryReader() {geometry in
            VStack() {
                Spacer()
                
                Image(systemName: "figure.mind.and.body")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geometry.size.width * (2/3), height: geometry.size.height * 0.5)
                    .foregroundStyle(.pink)
                Text("Namaste")
                    .font(.largeTitle)
                    .minimumScaleFactor(0.5)
                    .foregroundStyle(.pink)
                    .multilineTextAlignment(.center)
                    .frame(height:150)
                    .frame(maxWidth: .infinity)
                    .fontWeight(.black)
                Spacer()
                Spacer()
                
            }
            .border(.blue)
            
        }
        
        
        
        
        
        
        
    }
    
    
}

#Preview {
    ContentView()
}
