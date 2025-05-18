//
//  MoodBoard.swift
//  CapstoneProject
//
//  Created by christine j on 5/17/25.
//

import SwiftUI

struct MoodBoard: View {
    @State var selectedMood: String? = nil
    let moods = [
        "Chill": ("😌", "R&B Hip Hop", "Relax and Unwind Deep Breathes", Color.blue),
        "Energetic": ("💪", "EDM", "Let's Pump it Upp", Color.yellow),
        "Serene": ("🧘‍♀️", "Lofi Beats", "Meditate and Deep Breathes", Color.green),
        "Intense": ("😱", "Hardcore Punk", "Get Ready to Rock", Color.red),
        "Romantic": ("💕", "Classical Music", "Love and Affection", Color.pink),
        "Playful": ("😂", "Pop Music", "Have Fun and Laugh", Color.orange),
        "Spooky": ("👻", "Electronic Music", "Get Spooky and Creepy", Color.black),
        "Mysterious": ("🕵️‍♂️", "Ambient Music", "Unravel the Mystery", Color.purple)
    ]
    
    var body: some View {
        VStack {
            Text("Select Your Mood (Board)")
                .font(.title)
                .fontWeight(.bold)
            
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                ForEach(moods.keys.sorted(), id: \.self) { mood in
                    Button(mood) {
                        selectedMood = mood
                    }
                    .frame(maxWidth: .infinity, minHeight: 60)
                    .background(Color.gray.opacity(0.15))
                    .cornerRadius(12)
                    .foregroundColor(.teal)
                }
            }
            .padding()
//            .padding(.bottom, 30)
            Spacer()
            
            if let mood = selectedMood, let data = moods[mood] {
                VStack(spacing: 10) {
                    Text(data.0)
                    Text(data.1)
                        .font(.title2)
                    Text(data.2)
                        .italic(true)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(data.3.opacity(0.3))
                .cornerRadius(20)
                .transition(.opacity)
                .animation(.easeInOut, value: selectedMood)
            }
            Spacer()
        }
        .padding()
    }

}

#Preview {
    MoodBoard()
}
