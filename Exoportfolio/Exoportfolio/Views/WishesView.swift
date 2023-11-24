//
//  WishesView.swift
//  Exoportfolio
//
//  Created by Mathieu Durand on 23/11/2023.
//

import SwiftUI

struct WishesView: View {
    @State var imageAladdinToggle: Bool = false
    @State var imageJafarToggle: Bool = false
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView(.vertical) {
                    Text("Préparez vous à rester bouche bée. \n Mes réalisations sont plus folles les unes que les autres !")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.purple)
                        .font(.title3)
                    Image("genie")
                        .resizable()
                        .frame(height: 200)
                        .padding()
                    Divider()
                        .frame(width: 370)
                        .overlay(.purple)
                    HStack {
                        Image("aladdin")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 230)
                            .cornerRadius(40)
                            .padding(2)
                        NavigationLink {
                            Button {
                                imageAladdinToggle.toggle()
                            } label: {
                                Image(imageAladdinToggle ? "ali" : "aladdin")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(40)
                                    .padding()
                            }
                        } label: {
                            Text("Voulez-vous voir le tableaux makeover de notre cher Aladdin ? ")
                                .multilineTextAlignment(.center)
                                .foregroundColor(.purple)
                                .font(.subheadline)
                        }
                        
                    }
                    VStack(spacing: 0) {
                        NavigationLink {
                            Button {
                                imageJafarToggle.toggle()
                            } label: {
                                Image(imageJafarToggle ? "jafar_snake" : "jafar")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(40)
                                    .padding()
                            }
                        } label: {
                            Text("Quelle était la mauvaise idée de Jafar")
                                .font(.title)
                                .foregroundColor(.blue)
                                .padding()
                           
                                
                        }
                        Image("jafar")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 200, height: 200)
                            
                            
                        
                    }.background(.cyan)
                        .frame(width: 320, height: 300)
                        .cornerRadius(40)
                        .padding()
                        
                }
                Spacer()
                
            }.navigationTitle("Réalisations")
        }
    }
}

#Preview {
    WishesView()
}
