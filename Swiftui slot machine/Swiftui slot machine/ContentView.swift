//
//  ContentView.swift
//  Swiftui slot machine
//
//  Created by Aidan Middleton on 2020-06-23.
//  Copyright © 2020 Aidan Middleton. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var credits = 1001
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(Color(red: 86/255, green: 127/255, blue: 184/255))
                .edgesIgnoringSafeArea(.all)
            
            Rectangle()
                .foregroundColor(Color(red: 133/255, green: 201/255, blue: 237/255))
                .rotationEffect(Angle(degrees:45))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack {
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("Big Boi Slots")
                        .bold()
                        .foregroundColor(.white)
                        
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
                .padding(.top, 20)
                .scaleEffect(2)
                
                
                Spacer()
                
                Text("Credits: " + String(self.credits))
                    .padding(.all, 10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    Image("cherry")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                    
                    Image("cherry")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                    
                    Image("cherry")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Spacer()
                    
                }
                
                Spacer()
                
                Button(action: {
                    
                    self.credits += 1
                    
                }) {
                    Text("SPIN")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.all, 10)
                        .padding([.leading, .trailing], 30)
                        .background(Color.pink)
                        .cornerRadius(15)
                }
                
                Spacer()
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
