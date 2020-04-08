//
//  NegativeFeedback.swift
//  FireEmergency
//
//  Created by Xinyu Liu on 2020/3/22.
//  Copyright © 2020 Mahamed. All rights reserved.
//

import SwiftUI

struct NegativeFeedback: View {
    @EnvironmentObject var viewRouter: ViewRouter
    //     @EnvironmentObject var display : UserData
    
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
                    })//end of button
                    Text("Practice Phone Call")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color(red: 203.0/255.0, green: 108.0/255.0, blue: 99.0/255.0))
                Spacer()
                // Text("9 1 8")
                Text("\(viewRouter.display)")
                    //                Text("\(display.display)")
                    //                Text(display.getUserInput())
                    //                Text("0")
                    .bold()
                    .padding(.vertical)
                    .frame(width: 200.0, height: 100.0)
                    .font(.largeTitle)
                //                        Spacer()
                Image("sad")
                //                        Spacer()
                HStack{
                    if viewRouter.printStars() == 0
                    {
                        Spacer()
                        Image(systemName: "star")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 80, height: 80, alignment: .leading)
                        Spacer()
                        Image(systemName: "star")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 80, height: 80, alignment: .leading)
                        Spacer()
                        Image(systemName: "star")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 80, height: 80, alignment: .leading)
                        Spacer()
                    }
                    else if viewRouter.printStars() == 1
                                     {
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
                                         Image(systemName: "star")
                                             .resizable()
                                             .foregroundColor(.black)
                                             .frame(width: 80, height: 80, alignment: .leading)
                                         Spacer()
                                     }
                    if viewRouter.printStars() == 2
                                     {
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
                                     }
                    
                    
                
                
            }//end of HStack
            //                Spacer()
            
            
            Text(" You got \(viewRouter.getGoodInputs()) right, but \(viewRouter.getBadInputs()) is wrong. Try again. If you're having trouble click the button below")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 100, alignment: .leading)
                .font(.callout)
            
            Button(action: {
                self.viewRouter.currentPage = PageEnum.PHONE_PAGE
            }, label: {
                Text("Try Again").bold()
                    .foregroundColor(.white)
                    .padding(.all, 4.0)
                    .background(Color.green)
                    .shadow(radius: 6)
            })//end of button
            Spacer()
            
            Button(action: {
                self.viewRouter.currentPage = PageEnum.HELPER_PAGE
            } ,
                   label:{ Text("Having Trouble? Click Here")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.green, lineWidth: 5))
                    
                    
            })
            
        }//end of VStack
        
        
    }//end of ZStack
}
}


struct NegativeFeedback_Previews: PreviewProvider {
    static var previews: some View {
        NegativeFeedback()
        //        .environmentObject(UserData())
    }
}
