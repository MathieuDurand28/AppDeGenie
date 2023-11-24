//
//  HomeView.swift
//  Exoportfolio
//
//  Created by Mathieu Durand on 23/11/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Image("cover")
                    .resizable()
                    .scaledToFit()
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 90, height: 90)
                    .offset(CGSize(width: 0, height: 60))
                
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 60, height: 60)
                    .background(Color.white)
                    .offset(CGSize(width: -3, height: 60))
            }
            Text("L'app Du Génie")
                .font(.largeTitle)
                .padding()
            Divider()
                .frame(width: 350, height: 2)
                .overlay(.blue)  
            Text("Je suis le génie d'Aladdin, j'aime rencontrer de nouvelles personnes et permetre aux gens de réaliser leurs rêves. ")
                .font(.subheadline)
                .padding()
            Image("lamp")
                .resizable()
                .cornerRadius(15)
                .scaledToFit()
                .padding()
            Spacer()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
