//
//  ContentView.swift
//  FireEmergency
//
//  Created by Mahamed on 2020-03-15.
//  Copyright © 2020 Mahamed. All rights reserved.
//

import SwiftUI

struct HomePageDetail: View {
    var body: some View
    {
        
       // NavigationView
       // {
        ZStack {
            
            Color.pink.edgesIgnoringSafeArea(.bottom)
            
            
            VStack {
                HStack {
                    Text("FireAwereness")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        
                    Spacer()
                    Image(systemName: "person")
                }
                .background(LinearGradient(gradient: Gradient(colors: [Color.pink , Color.purple]), startPoint: .leading, endPoint: .trailing))
                Spacer()

                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Practice Phone Call")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .padding(.leading)
                        .frame(width: 300.0, height: 100.0)
                        .background(/*@START_MENU_TOKEN@*/Color.orange/*@END_MENU_TOKEN@*/)
                        .position(x: 200, y: 150)
                        
                }

            }.padding()
                
        }
            
        
            
        //}
   
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageDetail()
    }
}
