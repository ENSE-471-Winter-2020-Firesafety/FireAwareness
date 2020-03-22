//
//  NegativeFeedback.swift
//  FireEmergency
//
//  Created by Xinyu Liu on 2020/3/22.
//  Copyright © 2020 Mahamed. All rights reserved.
//

import SwiftUI

struct NegativeFeedback: View {
    var body: some View {
         ZStack{
            
            VStack(spacing: 0.0){
                
                        HStack {
                         Button(action: {
                             
                         }, label: {
                               Image(systemName: "house.fill")
                                .resizable()
                                .frame(width: 40.0, height: 40.0, alignment: .leading)
                                 .foregroundColor(.black)
                         })//end of button
                             Text("Practice Phone Call")
                                 .font(.largeTitle)
                                 .bold()
                                 .foregroundColor(.white)
                         }
                        .padding()
                         .background(Color(red: 203.0/255.0, green: 108.0/255.0, blue: 99.0/255.0))
//                        Spacer()
                        Text("9 1 8")
                            .bold()
                            .padding(.vertical)
                            .frame(width: 200.0, height: 100.0)
                            .font(.largeTitle)
//                        Spacer()
                        Image("sad")
//                        Spacer()
                        HStack{
                            Spacer()
                            Image(systemName: "star.fill")
                            .resizable()
                                .foregroundColor(.yellow)
                                .frame(width: 80, height: 80, alignment: .leading)
                            Spacer()
                            Image(systemName: "star.fill")
                            .resizable()
                                .foregroundColor(.yellow)
                                .frame(width: 80, height: 80, alignment: .leading)
                            Spacer()
                            Image(systemName: "star")
                            .resizable()
                                .foregroundColor(.black)
                                .frame(width: 80, height: 80, alignment: .leading)
                            Spacer()
                        }//end of HStack
//                Spacer()
                        Text("So close you got 9 and 1. The 8 is wrong.                  The correct input is 911")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        .frame(width: 200, height: 100, alignment: .leading)
                        .font(.callout)
                        
                        Button(action: {
                        }, label: {
                            Text("Try Again").bold()
                                .foregroundColor(.white)
                                .padding(.all, 4.0)
                                .background(Color.green)
                                .shadow(radius: 6)
                        })//end of button
//                Spacer()
            }//end of VStack

                }//end of ZStack
    }
}

struct NegativeFeedback_Previews: PreviewProvider {
    static var previews: some View {
        NegativeFeedback()
    }
}
