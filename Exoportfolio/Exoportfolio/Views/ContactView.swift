//
//  ContactView.swift
//  Exoportfolio
//
//  Created by Mathieu Durand on 23/11/2023.
//

import SwiftUI

struct ContactView: View {
    @State var isPresented: Bool = false
    
    var body: some View {
        VStack{
            Text("Ou me trouver ? ")
                .font(.largeTitle)
                .foregroundStyle(.purple)
                .bold()
            Image("cave_outside")
                .resizable()
                .scaledToFit()
                .padding()
            Button("Dans la cave des merveilles") {
                isPresented.toggle()
            }.buttonStyle(.borderedProminent)
            Image("cave_inside")
                .resizable()
                .cornerRadius(25)
                .shadow(color: .purple, radius: 2, x: 2, y: 2)
                .scaledToFit()
                .padding()
            Spacer()
            Text("Attention !!! \n Vous ne pouvez prendre QUE la lampe dans cette cave aux merveilles !")
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .padding()
        }.sheet(isPresented: $isPresented) {
            VStack {
                Text("Bien au chaud à l'intérieur de la lampe")
                    .font(.title3)
                    .foregroundStyle(.purple)
                    .bold()
                Image("dans_lampe")
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
        }
    }
}

#Preview {
    ContactView()
}
