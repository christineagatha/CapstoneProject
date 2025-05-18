//
//  TheoryQuizData.swift
//  CapstoneProject
//
//  Created by christine j on 5/18/25.
//

import Foundation

struct QuizQuestion {
    let term: String
    let choices: [String]
    let answer: String
}

// questions generated using AI, given abrsm music theory 5 level questions as a criteria
let Questions: [QuizQuestion] = [
    .init(
        term: "What is the meaning of 'molto allegro'?",
        choices: ["Very slow", "Very fast", "Moderately fast", "Very loud"],
        answer: "Very fast"
    ),
    .init(
        term: "Which of these key signatures has 5 sharps?",
        choices: ["B major", "D major", "A major", "E major"],
        answer: "B major"
    ),
    .init(
        term: "Which of these chords is a diminished triad?",
        choices: ["C–E–G", "D–F–A", "B–D–F", "E–G–B"],
        answer: "B–D–F"
    ),
    .init(
        term: "What is the enharmonic equivalent of G♯?",
        choices: ["A♭", "F♯", "B♭", "C♯"],
        answer: "A♭"
    ),
    .init(
        term: "Which of the following time signatures is compound?",
        choices: ["3/4", "4/4", "6/8", "2/2"],
        answer: "6/8"
    ),
    .init(
        term: "What is the relative minor of E major?",
        choices: ["C♯ minor", "G♯ minor", "B minor", "A minor"],
        answer: "C♯ minor"
    ),
    .init(
        term: "Which term means 'getting slower'?",
        choices: ["Accelerando", "Crescendo", "Ritardando", "Staccato"],
        answer: "Ritardando"
    ),
    .init(
        term: "What is the interval between C and A♭?",
        choices: ["Major 6th", "Minor 6th", "Perfect 5th", "Minor 7th"],
        answer: "Minor 6th"
    ),
    .init(
        term: "Which of these is a plagal cadence?",
        choices: ["IV–I", "V–I", "ii–V", "I–IV"],
        answer: "IV–I"
    ),
    .init(
        term: "In 6/8 time, how many quavers (eighth notes) are in a bar?",
        choices: ["6", "4", "2", "8"],
        answer: "6"
    )
]
