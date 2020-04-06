//
//  PositiveFeedback.swift
//  FireEmergency
//
//  Created by Xinyu Liu on 2020/3/22.
//  Copyright © 2020 Mahamed. All rights reserved.
//

import SwiftUI

struct PositiveFeedback: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ZStack{
            VStack(spacing: 0.0){
                HStack {
                 Button(action: {
                    
                    self.viewRouter.currentPage = PageEnum.HOME_PAGE
                     
                 }, label: {
                       Image(systemName: "house.fill")
                        .resizable()
                        .frame(width: 40.0, height: 40.0, alignment: .leading)
                         .foregroundColor(.black)
                 })
                     Text("Practice Phone Call")
                         .font(.largeTitle)
                         .bold()
                         .foregroundColor(.white)
                 }
                .padding()
                 .background(Color(red: 203.0/255.0, green: 108.0/255.0, blue: 99.0/255.0))
//                Spacer()
                Text("9 1 1")
                    .bold()
                    .padding(.vertical)
                    .frame(width: 200.0, height: 100.0)
                    .font(.largeTitle)
                HStack{
                    Image("Pasted Graphic")
                    Button(action: {}, label:{
                        Image(systemName: "arrowtriangle.right.fill")
                            .resizable()
                            .padding(.top)
                            .frame(width: 20.0, height: 50.0, alignment: .leading)
                            .foregroundColor(.black)
                    })//end of button
                }//end of HStack
               
                Image("positive feedback")
                    .resizable().padding(.bottom, 40.0)

                Spacer()
                
                HStack{
                    Spacer()
//                    Button(action: {}, label:{
//                                          Image(systemName: "arrow.left.circle")
//                                              .resizable()
//                                              .frame(width: 50.0, height: 50.0, alignment: .leading)
//                                              .foregroundColor(.black)
//                                      })//end of button
                  //  Spacer()
                    //Spacer()
                    //Spacer()
//                    Button(action: {}, label:{
//                                              Text("Continue");
//                                              Image(systemName: "arrow.right.circle")
//                                              .resizable()
//                                              .frame(width: 50.0, height: 50.0, alignment: .leading)
//                                              .foregroundColor(.black)
//                                      })//end of button
                    Button(action: {
                        self.viewRouter.currentPage = PageEnum.OPERATOR_PAGE
                    } ,
                           label:{ Text("Proceed to call")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.black)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.green, lineWidth: 5))
                            
                            
                    })
                        
                    Spacer()
                }
                   
            }//end of VStack

        }//end of ZStack
    }
}

struct PositiveFeedback_Previews: PreviewProvider {
    static var previews: some View {
        PositiveFeedback()
    }
}
