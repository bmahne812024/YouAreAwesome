//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Brian Mahne on 11/12/24.
//

import SwiftUI
import AVFAudio


struct ContentView: View {
    @State private var message = ""

    @State private var imageName = ""
    @State private var newImageName = ""
    @State private var audioPlayer: AVAudioPlayer!
    @State private var imageNum = 0
    @State private var messageNum = 0
    @State private var soundNum = 0
    
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
                    print("\nOld messageNum = \(messageNum)")
                    messageNum = nonRepeatingRandom(lastValue: messageNum, range: messages.count)
                    print("New messageNum = \(messageNum)")
                    message = messages[messageNum-1]
                    
                    print("\nOld imageNum = \(imageNum)")
                    
                    imageNum = nonRepeatingRandom(lastValue: imageNum, range: 3)
                    imageName = "animal\(imageNum)"

                    var soundName = ""
                    soundNum = nonRepeatingRandom(lastValue: soundNum, range: 5)
                    soundName = "Slot Machine Mega Win_\(soundNum)"
                    playSound(soundName: soundName)
                    
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
    
    func playSound(soundName: String) {
        guard let soundFile = NSDataAsset(name: soundName) else {
            print("error loading file")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer.play()
        } catch {
            print("Error")
        }
    }
    
    func nonRepeatingRandom(lastValue: Int, range: Int) -> Int {
        var newValue = 0
        repeat {
            newValue = Int.random(in: 1...range)
        } while newValue == lastValue
        return newValue
    }
    
}

#Preview {
    ContentView()
}
