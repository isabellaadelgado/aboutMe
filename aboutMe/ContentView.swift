//
//  ContentView.swift
//  nested stacks
//
//  Created by Scholar on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var ClickMe = ""
    
    var body: some View {
       
        ZStack {
            Color(.systemTeal)
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 20.0) {
                
                Image("traveling")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
                HStack(spacing: 20.0) {
                    
                    Text("Isabella")
                        .font(.title)
                        .fontWeight(.bold)
                    
                }
                VStack(alignment: .center){
                    Text(ClickMe)
                    Button("Click me") {
                        ClickMe = "1. I love traveling 2. I love watching movies 3. I like going to different popups around the city"
            
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(.indigo)
                    
                }
            }
            
            .padding()
            .background(Rectangle()
                .foregroundColor(.white))
            .cornerRadius(15)
            .shadow(radius:15)
            .padding()
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
