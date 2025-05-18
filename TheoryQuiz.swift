//
//  TheoryQuiz.swift
//  CapstoneProject
//
//  Created by christine j on 5/17/25.
//

import SwiftUI

struct TheoryQuiz: View {
    @State private var score = 0
    @State private var showScore = false
    @State private var currentIdx = 0
    @State private var selectedAnswer: String? = nil
    
    let questions = [Questions]
    
    var body: some View {
        if showScore {
            VStack {
                Text("Theory Quiz")
                    .font(.title)
                    .padding(.bottom, 10)
                Text("You got \(score) out of \(questions.count) correct!")
                    .font(.headline)
                Button("Restart") {
                    self.score = 0
                    self.showScore = false
                    self.currentIdx = 0
                }
            }
        } else {
            Text("Question \(currentIdx + 1) of \(questions.count)")
                .font(.subheadline)
            Text(questions[currentIdx].term)
            
//            ForEach(questions[currentIdx].choices, id: \.self) { choice in
//                Button(action: {
//
//                }
//            }
        }
    }
}

#Preview {
    TheoryQuiz()
}
