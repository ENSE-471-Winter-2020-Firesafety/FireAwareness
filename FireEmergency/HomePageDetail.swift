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
            
            Color.pink.edgesIgnoringSafeArea(.all)
            
            
            
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
