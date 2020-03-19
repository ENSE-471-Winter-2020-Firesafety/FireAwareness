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
//            .forcegroundColor()
//            Color(red: 0.5, green: 0.3, bule: 0.4)
//            Color.pink.edgesIgnoringSafeArea(.bottom)
            
            
            Rectangle()
                .foregroundColor(Color(red: 195/255, green: 140/255, blue: 148/255))
                .edgesIgnoringSafeArea(.bottom)
            
            Rectangle()
            .foregroundColor(Color(red: 203/255, green: 108/255, blue: 99/255))
                .frame(height: 80)
                .cornerRadius(16.0)
                .position(x: 207, y: 40)
            
            VStack {
                HStack {
                    Text("FireAwereness")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        
                    Spacer()
                    Image(systemName: "person")
                }
               // .background(LinearGradient(gradient: Gradient(colors: [Color.pink , Color.pink]), startPoint: .leading, endPoint: .trailing))
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
                        .cornerRadius(20.0)
                        .shadow(radius: /*@START_MENU_TOKEN@*/6/*@END_MENU_TOKEN@*/)
                        

                }
                
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                   Text("Draw Escape Plan")
                                       .font(.title)
                                       .fontWeight(.medium)
                                       .foregroundColor(Color.black)
                                       .multilineTextAlignment(.center)
                                       .padding(.leading)
                                       .frame(width: 300.0, height: 100.0)
                                    .background(Color(red: 255/255, green: 172/255, blue: 4/255))
                    .cornerRadius(/*@START_MENU_TOKEN@*/16.0/*@END_MENU_TOKEN@*/)
                               }
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                   Text("Fire Survival Info")
                                       .font(.title)
                                       .fontWeight(.medium)
                                       .foregroundColor(Color.black)
                                       .multilineTextAlignment(.center)
                                       .padding(.leading)
                                       .frame(width: 300.0, height: 100.0)
                                    .background(Color(red: 251/255, green: 219/255, blue: 123/255))
                    .cornerRadius(/*@START_MENU_TOKEN@*/16.0/*@END_MENU_TOKEN@*/)
//                                       .position(x: 200, y: 150)
                               }
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                   Text("Fire Safety Info")
                                       .font(.title)
                                       .fontWeight(.medium)
                                       .foregroundColor(Color.black)
                                       .multilineTextAlignment(.center)
                                       .padding(.leading)
                                       .frame(width: 300.0, height: 100.0)
                                    .background(Color(red: 251/255, green: 251/255, blue: 4/255))
                                      .cornerRadius(/*@START_MENU_TOKEN@*/16.0/*@END_MENU_TOKEN@*/)
                               }
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
