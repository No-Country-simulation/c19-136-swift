//
//  MyProfileView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import SwiftUI

struct MyProfileView: View {
    var body: some View {
        VStack {
            Text("Hello")
            Image("heart.profile")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
                
        }

    }
}

#Preview {
    MyProfileView()
}
