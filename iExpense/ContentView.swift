//
//  ContentView.swift
//  iExpense
//
//  Created by Nick Krasnitskiy on 09.11.2023.
//

import SwiftUI

class User: ObservableObject {
   @Published var firstName = "Bilbo"
   @Published var lastName = "Baggins"
}

struct ContentView: View {
    @ObservedObject private var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First name: ", text: $user.firstName)
            TextField("Last name: ", text: $user.lastName)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
