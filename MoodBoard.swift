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
        "Intense": ("😱", "Hardcore Punk", "Get Ready to Rock", Color.red)
    ]
    
    var body: some View {
        Text("Select Your Mood (Board)")
            .font(.title)
            .fontWeight(.bold)
        
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
            ForEach(moods.keys.sorted(), id: \.self) { mood in
                Button(mood) {
                    selectedMood = mood
                }
                .frame(maxWidth: .infinity, minHeight: 60)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(12)
            }
        }
        .padding()
    }

}

#Preview {
    MoodBoard()
}
