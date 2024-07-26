//
//  ContentView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 25/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(Font.custom("Montserrat-SemiBold", size: 32, relativeTo: .title))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
