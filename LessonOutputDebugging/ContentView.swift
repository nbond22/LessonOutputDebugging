//
//  ContentView.swift
//  LessonOutputDebugging
//
//  Created by Scholar on 4/20/25.
//

import SwiftUI

struct ContentView: View {
    
    let name = ""
// 💡 Your using "let" here which is a constant and the @State property wrapper is used for inputs that change.  What adjustment do you think can be made here to define your name variable?
    
    @State private var food: String = ""
//  👏🏾 Great job declaring this variable with the property wrapper!  Be sure all instances of this variable are referenced correctly throughout your code below *hinthint*!
    
    @State private var showAlert = false

    var body: some View {
        VStack {
            Text("Tell us about yourself!")
                .font(.title)

            TextField("Enter name", text: name)
//            👀 Take a look at the binding you used below in your button! Remember that the purpose of binding is for SwiftUI to recgonize changes to user input and update the information accordingly!
                .textFieldStyle(.roundedBorder)
                .padding()

            TextField("Favorite food", text: good)
//            🧐 Think about the variable you're trying to call here.  Does it match what you've defined earlier?
            
//            💡Another tip for future bugs is to click on the red errors that pop up in your code.  Even if you don't fully understand the error, it can help point you in the right direction fo where to get started with debugging! 👍🏾
            
                .textFieldStyle(.roundedBorder)
                .padding()

            Button("Submit") {
            }
//          ^^
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            .alert("Thanks, \\(name)! We now know your favorite food is \\(food)!", isPresented: $showAlert) {
//                🙌🏾 You did a great job using binding to reference your variable above for the alert!  This is very similar
                Button("OK", role: .cancel) { }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
