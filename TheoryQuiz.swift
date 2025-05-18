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
    
    let questions = Questions
    
    var body: some View {
        Text("Theory Quiz")
            .font(.title)
            .fontWeight(.bold)
        
        if showScore {
            VStack {
                Spacer()

                Text("You got \(score) out of \(questions.count) correct!")
                    .font(.headline)
                
                Spacer()
                Button("Restart") {
                    score = 0
                    showScore = false
                    currentIdx = 0
                    selectedAnswer = nil
                }
            }
        } else {
            Spacer()
            Text("Question \(currentIdx + 1) of \(questions.count)")
                .font(.subheadline)
                .foregroundColor(.secondary)
            Text(questions[currentIdx].term)
                .font(.title3)
                .foregroundColor(.teal)
                .padding(.bottom, 20).padding(.top, 10)
                .multilineTextAlignment(.center)

            ForEach(questions[currentIdx].choices, id: \.self) { choice in
                Button(action: {
                    if selectedAnswer == nil {
                        selectedAnswer = choice
                        if choice == questions[currentIdx].answer {
                            score += 1
                        }
                    }
                }) {
                    HStack {
                        Text(choice)
                            .foregroundColor(.primary)
                        Spacer()
                        if let selected = selectedAnswer {
                            if choice == questions[currentIdx].answer {
                                Image(systemName: "checkmark.circle")
                                    .foregroundColor(.green)
                            } else if choice == selected {
                                Image(systemName: "xmark.circle")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)

                }
                .disabled(selectedAnswer != nil)
            }
            
            if selectedAnswer != nil {
                Button("Next") {
                    if currentIdx + 1 < questions.count {
                        currentIdx += 1
                        selectedAnswer = nil
                    } else {
                        showScore = true
                    }
                }
                .padding()
            }
        }
        Spacer()
        .padding()
    }
}

#Preview {
    TheoryQuiz()
}
