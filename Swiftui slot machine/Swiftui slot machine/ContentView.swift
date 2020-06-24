//
//  ContentView.swift
//  Swiftui slot machine
//
//  Created by Aidan Middleton on 2020-06-23.
//  Copyright © 2020 Aidan Middleton. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(Color(red: 86/255, green: 127/255, blue: 184/255))
                .edgesIgnoringSafeArea(.all)
            
            Rectangle()
                .foregroundColor(Color(red: 133/255, green: 201/255, blue: 237/255))
                .rotationEffect(Angle(degrees:45))
                .edgesIgnoringSafeArea(.all)
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
