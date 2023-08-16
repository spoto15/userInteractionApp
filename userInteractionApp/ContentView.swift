//
//  ContentView.swift
//  userInteractionApp
//
//  Created by scholar on 8/9/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State var textTitle = "What is your name?"
    
    var body: some View {
        
        VStack {
            Text(textTitle)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.black)
            TextField("Type your name here please", text: $name)
                .multilineTextAlignment(TextAlignment.center)
                .font(.title)
                .border(Color.gray, width:3)
                .padding()
            Button("Submit Name") {
                textTitle = "Welcome \(name)!"
            }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.green)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
