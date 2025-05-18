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
            Text("sdvgsvs")
            Spacer()
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label Content@*/Text("Navigate")/*@END_MENU_TOKEN@*/
            }
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label Content@*/Text("Navigate")/*@END_MENU_TOKEN@*/
            }
            Spacer()
            Text("@Copyright 2025 TuneIn")
        }
        .padding()
        }

    }
}

#Preview {
    ContentView()
}
