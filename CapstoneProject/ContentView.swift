//
//  ContentView.swift
//  CapstoneProject
//
//  Created by christine j on 5/17/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
        VStack {
            (Text("Tune ") + Text(Image(systemName: "music.note")) + Text("n"))
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.teal)
                .padding(.top, 40)
            Image("piano")
                .padding(10)
            Text("Click Below To")
                .font(.caption)
                .fontWeight(.semibold)
            Text("Learn More about General Music and Music Theory!")
                .font(.caption)
                .fontWeight(.semibold)
            Spacer()
            HStack {
                NavigationLink(destination: MoodBoard()) {
                    Text("Mood Board")
                }
                .padding(30)
                .background(Color.pink.opacity(0.3))
                .foregroundColor(.black)
                NavigationLink(destination: TheoryQuiz()) {
                    Text("Theory Quiz")
                }
                .padding(30)
                .background(Color.pink.opacity(0.3))
                .foregroundColor(.black)
            }
            Spacer()
            Text("@Copyright 2025 TuneIn")
                .font(.footnote)
        }
        .padding()
        }

    }
}

#Preview {
    ContentView()
}
